import 'package:dio/dio.dart';
import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/estimated_value.dart';
import 'package:domain_investor/product.dart';
import 'package:domain_investor/serializers.dart';
import 'package:domain_investor/viewstate.dart';

class DomainModel extends BaseModel {
  Domain domain;
  String errorMessage;

  Future init(Domain d) async {
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
    } catch (e) {
      print(e);
    }
  }
}
