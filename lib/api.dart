import 'dart:async';
import 'dart:convert' show json, utf8;
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class Api {
  static const host = "https://app.bento.ky/api/v1";
  static const gatewayHost =
      'https://apidev.caymangateway.com/apiv2/three-step';

  static const gatewayHostApiKey =
      '0j2Od6WbVXJr42fTIRBKvIWHMELjYb9tRd9OLUKaCbP0EVNr3cypLAI3YlWeRtlTWgIcHRratZar5STGJE4ukl1e5h6OG0x44ErEfdARSXKGnO7pnoKxxsogsWYtfujNbCIZGNRLh4vhSa4e7NnoTzpB30odAjfJooc6xposax3x6GtLAzSW54e0XCQOgIjsNtT1WB1rdZM6Ycdz5OgTy6JKJDy6oGBadUYCSAtYZW5dycDU5CP4rXE1HVosFQ7aJpYf5cF4aUewaOfZOQlUrBPnSef95gJZDyYrm0lkF4Be';

  final client = http.Client();

  Map<String, String> headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  String readResponse(Response response) {
    return utf8.decode(response.bodyBytes);
  }
}
