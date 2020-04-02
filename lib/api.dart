import 'dart:async';
import 'package:dio/dio.dart';
import 'package:domain_investor/model/shopper_model.dart';
import 'package:domain_investor/registered_domain.dart';
import 'package:domain_investor/serializers.dart';

class Api {
  Dio dio = Dio(
    BaseOptions(
      contentType: "application/json",
      headers: {
        "Authorization":
            "sso-key e4sHvozDEuLn_6o4qc7RBscEcHWW51ptHyU:T6iD7XbrZHqUwK447eo3zy",
        "cookie": "currency=USD;"
      },
    ),
  );

  Map<String, String> headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  Future<List<RegisteredDomain>> manage(String customerId) async {
    Response response =
        await dio.get("https://api.godaddy.com/v1/domains").catchError(
      (error) {
        var message = (error as DioError).response.data["message"].toString();
        print(message);
      },
    );

    return deserializeListOf<RegisteredDomain>(response.data).toList();
  }

  Future<Shopper> shopperDetails(String shopperId) async {
    Response response =
        await dio.get("https://api.godaddy.com/v1/shoppers/$shopperId").catchError(
      (error) {
        var message = (error as DioError).response.data["message"].toString();
        print(message);
      },
    );

    return deserialize<Shopper>(response.data);
  }

  Future<String> login(String username, String password) async {
    Response response = await dio.post(
      "https://sso.godaddy.com/v1/api/idp/login?realm=idp&path=%2Fproducts&app=account",
      data: {
        "username": username,
        "password": password,
        "remember_me": true,
        "plid": 1,
        "API_HOST": "godaddy.com"
      },
    ).catchError(
      (error) {
        var message = (error as DioError).response.data["message"].toString();
        print(message);
      },
    );
    final cookies = response.headers.map["set-cookie"];
    final token = cookies.firstWhere((element) => element.contains("auth_id"));
    return token.split(";").first;
  }
}
