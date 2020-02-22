import 'package:dio/dio.dart';
import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/estimated_value.dart';
import 'package:domain_investor/product.dart';
import 'package:domain_investor/search_page_model.dart';
import 'package:domain_investor/serializers.dart';
import 'package:domain_investor/viewstate.dart';

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

  String name() {
    return domain.name;
  }

  String price() {
    return "price: ${domain.price?.toString() ?? "null"}";
  }

  bool hasError() {
    return errorMessage != null && errorMessage.isNotEmpty;
  }

  String estimatedValue() {
    String value = "value:\n";
    if (domain.estimatedValue != null && domain.estimatedValue <= 100) {
      return value + "less than \$100";
    }

    if (errorMessage != null) {
      return "Error";
    }

    return value + (domain.estimatedValue?.toString() ?? "");
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

    final minValue = filterModel.rangeValue.start;
    final maxValue = filterModel.rangeValue.end;

    final minPrice = filterModel.rangePrice.start;
    final maxPrice = filterModel.rangePrice.end;

    var inValueRange = true;
    if (filterModel.estimateValue) {
      inValueRange = minValue <= domain.estimatedValue && maxValue == 2500
          ? true
          : domain.estimatedValue <= maxValue;
    }

    var inPriceRange = minPrice <= domain.price && maxPrice == 200
        ? true
        : domain.price <= maxPrice;
    return inValueRange && inPriceRange;
  }

  Future loadPrice() async {
    if (domain.estimatedValue != null) {
      return;
    }

    try {
      Response resultPrice = await api
          .get(
              "https://www.godaddy.com/domainsapi/v1/search/exact?q=${domain.name}")
          .catchError(
        (error) {
          var message = (error as DioError).response.data["message"].toString();
          errorMessage = message;
          print(message);
          setState(ViewState.Idle);
        },
      );

      var products = deserializeListOf<Product>(resultPrice.data['Products']);

      if (products != null && products.isNotEmpty) {
        domain = domain.rebuild((updates) =>
            updates.price = products.first.priceInfo.currentPrice.toDouble());
      }

      if (filterModel.estimateValue) {
        Response resultValue = await api
            .get("https://api.godaddy.com/v1/appraisal/${domain.name}")
            .catchError(
          (error) {
            var message =
                (error as DioError).response.data["message"].toString();
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
    } catch (e) {
      print(e);
    }
  }
}
