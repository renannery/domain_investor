import 'dart:convert';
import 'dart:io';

import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';
import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/estimated_value.dart';
import 'package:domain_investor/product.dart';
import 'package:domain_investor/recommended_domain.dart';
import 'package:domain_investor/serializers.dart';
import 'package:domain_investor/viewstate.dart';

class SearchPageViewModel extends BaseModel {
  List<Domain> domainsList = List();
  String searchValue = "";

  Future init() async {
    setState(ViewState.Idle);
  }

  Future searchDomains(String value) async {
    if (value.isEmpty) {
      domainsList.clear();
      setState(ViewState.Idle);
      return;
    }

    if (searchValue == value) {
      return;
    }
    searchValue = value;
    domainsList.clear();

    try {
      setState(ViewState.Busy);
      Response response = await api.get(
          "https://www.godaddy.com/domainfind/v1/search/spins?q=$searchValue&pagestart=0&pagesize=200");

      var recommendedDomains = deserializeListOf<RecommendedDomain>(
          response.data['RecommendedDomains']);

      domainsList.clear();
      domainsList.addAll(recommendedDomains.take(20).map((element) {
        return Domain.fromProduct(element);
      }));
      domainsList.sort((a, b) => a.name.length.compareTo(b.name.length));

      setState(ViewState.Idle);
    } catch (e) {
      setState(ViewState.Idle);
      print(e);
    }
  }
}
