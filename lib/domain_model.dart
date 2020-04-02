import 'package:dio/dio.dart';
import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/estimated_value.dart';
import 'package:domain_investor/exact_match_domain.dart';
import 'package:domain_investor/product.dart';
import 'package:domain_investor/search_page_model.dart';
import 'package:domain_investor/serializers.dart';
import 'package:domain_investor/viewstate.dart';
import 'package:flutter/material.dart';

class DomainModel extends BaseModel {
  Domain domain;
  SearchPageViewModel _searchModel;
  String errorMessage;

  Future init(Domain d, SearchPageViewModel searchModel) async {
    _searchModel = searchModel;
    domain = d;

    setState(ViewState.Busy);
    await loadPrice();
    setState(ViewState.Idle);
  }

  Widget name(BuildContext context) {
    return _domainName(context, domain.name, domain.tld);
  }

  String price() {
    return "${domain.displayPrice ?? ""}";
  }

  bool unavailable() {
    return domain.isAvailable == false;
  }

  bool isPremium() {
    return domain.isPremium != null && domain.isPremium == true;
  }

  bool hasError() {
    return errorMessage != null && errorMessage.isNotEmpty;
  }

  String formattedPrice(int number) {
    numberFormat.maximumFractionDigits = 0;
    return numberFormat.format(number);
  }

  String estimatedValue() {
    String value = "Estimated value: ";
    if (domain.estimatedValue != null && domain.estimatedValue <= 100) {
      return value + "less than \$100";
    }

    if (errorMessage != null) {
      return "Error";
    }

    if (domain.estimatedValue == null) {
      return "";
    }

    return value + formattedPrice(domain.estimatedValue.toInt());
  }

  bool display() {
    if (domain.name.length > filterModel.maxLength &&
        filterModel.maxLength > 0) {
      return false;
    }

    if ((filterModel.estimateValue && domain.estimatedValue == null) ||
        errorMessage != null) {
      return true;
    }

    if (filterModel.availableOnly && domain.isAvailable == false) {
      return false;
    }

    final minValue = filterModel.rangeValue.start;
    final maxValue = filterModel.rangeValue.end;

    final minPrice = filterModel.rangePrice.start;
    final maxPrice = filterModel.rangePrice.end;

    var inValueRange = true;
    if (filterModel.estimateValue) {
      inValueRange = minValue <= domain.estimatedValue &&
          (maxValue == 2500 ? true : domain.estimatedValue <= maxValue);
    }

    var inPriceRange = minPrice <= domain.price &&
        (maxPrice == 200 ? true : domain.price <= maxPrice);
    return inValueRange && inPriceRange;
  }

  Future loadPrice() async {
    if (domain.estimatedValue != null) {
      return;
    }

    Response resultPrice = await api
        .get(
            "https://www.godaddy.com/domainsapi/v1/search/exact?q=${domain.name}")
        .catchError(
      (error) {
        errorMessage = "error";
        var message = (error as DioError).response.data["message"].toString();
        errorMessage = message;
        setState(ViewState.Idle);
      },
    );

    var products = deserializeListOf<Product>(resultPrice.data['Products']);

    var exactMatchDomain =
        deserialize<ExactMatchDomain>(resultPrice.data['ExactMatchDomain']);

    final currentPrice = exactMatchDomain.price > 0
        ? exactMatchDomain.price
        : products.first.priceInfo.currentPrice;
    final currentPriceDisplay = exactMatchDomain.price > 0
        ? exactMatchDomain.priceDisplay
        : products.first.priceInfo.currentPriceDisplay;

    final isAvailable = exactMatchDomain.isAvailable;

    if (products != null && products.isNotEmpty) {
      domain = domain.rebuild(
        (updates) => updates
          ..price = currentPrice
          ..displayPrice = currentPriceDisplay
          ..isAvailable = isAvailable,
      );
    }

    if (filterModel.estimateValue && display()) {
      Response resultValue = await api
          .get("https://api.godaddy.com/v1/appraisal/${domain.name}")
          .catchError(
        (error) {
          var message = (error as DioError).response.data["message"].toString();
          errorMessage = message;
          setState(ViewState.Idle);
        },
      );
      if (resultValue.data != null) {
        var estimatedValue = deserialize<EstimatedValue>(resultValue.data);
        domain = domain.rebuild((updates) =>
            updates.estimatedValue = estimatedValue.govalue.toDouble());
      }
    }
  }

  Widget goValue() {
    if (!filterModel.estimateValue) {
      return domain.isPremium == true ? Text("Premium") : SizedBox.shrink();
    }

    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: Image.asset(
            "assets/govalue.png",
            height: 14,
          ),
        ),
        Text(estimatedValue())
      ],
    );
  }

  Widget _domainName(BuildContext context, String fqdn, String tld) {
    final style = TextStyle(color: Theme.of(context).accentColor);
    final spans = _getSpans(fqdn, "." + tld, style);

    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.body1.copyWith(fontSize: 18),
        children: spans,
      ),
    );
  }

  List<TextSpan> _getSpans(String text, String matchWord, TextStyle style) {
    List<TextSpan> spans = [];
    int spanBoundary = 0;

    do {
      // look for the next match
      final startIndex = text.indexOf(matchWord, spanBoundary);

      // if no more matches then add the rest of the string without style
      if (startIndex == -1) {
        spans.add(TextSpan(text: text.substring(spanBoundary)));
        return spans;
      }

      // add any unstyled text before the next match
      if (startIndex > spanBoundary) {
        spans.add(TextSpan(text: text.substring(spanBoundary, startIndex)));
      }

      // style the matched text
      final endIndex = startIndex + matchWord.length;
      final spanText = text.substring(startIndex, endIndex);
      spans.add(TextSpan(text: spanText, style: style));

      // mark the boundary to start the next search from
      spanBoundary = endIndex;

      // continue until there are no more matches
    } while (spanBoundary < text.length);

    return spans;
  }
}
