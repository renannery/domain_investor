import 'package:dio/dio.dart';
import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/product.dart';
import 'package:domain_investor/recommended_domain.dart';
import 'package:domain_investor/serializers.dart';
import 'package:domain_investor/viewstate.dart';

class SearchPageViewModel extends BaseModel {
  List<Domain> domainsList = List();
  String searchValue = "";

  Future init() async {
    await setCurrency();
    setState(ViewState.Idle);
  }

  Future searchDomains(String value, {bool reload = false}) async {
    if (value.isEmpty) {
      domainsList.clear();
      setState(ViewState.Idle);
      return;
    }

    if (searchValue == value && !reload) {
      return;
    }
    searchValue = value;
    domainsList.clear();

    try {
      setState(ViewState.Busy);

      final values = searchValue.split(RegExp("[ ,]"));

      domainsList.clear();
      var recommendedDomains = List<RecommendedDomain>();
      if (values.length > 1) {
        final bulkSearch = values.map((search) => loadSearch(search));
        List<Response> responses = await Future.wait(bulkSearch);
        responses.forEach((element) {
          var result = deserializeListOf<RecommendedDomain>(
              element.data['RecommendedDomains']);
          recommendedDomains
              .addAll(filterModel.estimateValue ? result.take(5) : result);
        });
      } else {
        Response response = await loadSearch(searchValue);

        var result = deserializeListOf<RecommendedDomain>(
            response.data['RecommendedDomains']);
        recommendedDomains.addAll(result);
      }

      final resultList = filterModel.estimateValue
          ? recommendedDomains.take(20)
          : recommendedDomains;

      domainsList.addAll(resultList.map((element) {
        return Domain.fromRecommended(element);
      }));
      domainsList.sort((a, b) => a.name.length.compareTo(b.name.length));

      final exactMatches = values.where((value) => isFQDN(value));

      await Future.forEach(exactMatches, (element) async {
        final exactDomain = await loadExactMatch(element);
        domainsList.insert(0, exactDomain);
      });

      setState(ViewState.Idle);
    } catch (e) {
      setState(ViewState.Idle);
    }
  }

  Future<Domain> loadExactMatch(String domain) async {
    Response response = await api
        .get("https://www.godaddy.com/domainsapi/v1/search/exact?q=$domain")
        .catchError(
      (error) {
        var message = (error as DioError).response.data["message"].toString();
        errorMessage = message;
        print(message);
        setState(ViewState.Idle);
      },
    );

    var products = deserializeListOf<Product>(response.data['Products']);
    return Domain.fromProduct(domain, products.first);
  }

  Future<Response> loadSearch(String domain) async {
    return await api
        .get(
            "https://www.godaddy.com/domainfind/v1/search/spins?q=$domain&pagestart=0&pagesize=34")
        .catchError(
      (error) {
        var message = (error as DioError).response.data["message"].toString();
        errorMessage = message;
        print(message);
        setState(ViewState.Idle);
      },
    );
  }

  Future<Response> setCurrency() async {
    return await api
        .get("https://gui.godaddy.com/preference/currency/set/USD")
        .catchError(
      (error) {
        var message = (error as DioError).response.data["message"].toString();
        errorMessage = message;
        print(message);
        setState(ViewState.Idle);
      },
    );
  }

  Map merge(Map obj, defaults) {
    if (obj == null) {
      obj = new Map();
    }
    defaults.forEach((key, val) => obj.putIfAbsent(key, () => val));
    return obj;
  }

  bool isFQDN(str, [options]) {
    Map default_fqdn_options = {
      'require_tld': true,
      'allow_underscores': false
    };

    options = merge(options, default_fqdn_options);
    List parts = str.split('.');
    if (options['require_tld']) {
      var tld = parts.removeLast();
      if (parts.isEmpty || !RegExp(r'^[a-z]{2,}$').hasMatch(tld)) {
        return false;
      }
    }

    for (var part, i = 0; i < parts.length; i++) {
      part = parts[i];
      if (options['allow_underscores']) {
        if (part.indexOf('__') >= 0) {
          return false;
        }
      }
      if (!RegExp(r'^[a-z\\u00a1-\\uffff0-9-]+$').hasMatch(part)) {
        return false;
      }
      if (part[0] == '-' ||
          part[part.length - 1] == '-' ||
          part.indexOf('---') >= 0) {
        return false;
      }
    }
    return true;
  }
}
