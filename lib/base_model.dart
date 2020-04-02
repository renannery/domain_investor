import 'package:dio/dio.dart';
import 'package:domain_investor/api.dart';
import 'package:domain_investor/filter_model.dart';
import 'package:domain_investor/locator.dart';
import 'package:domain_investor/session_manager.dart';
import 'package:domain_investor/viewstate.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class BaseModel extends ChangeNotifier {
  Dio api = Dio(
    BaseOptions(
      contentType: "application/json",
      headers: {
        "authorization":
            "sso-key e4sHxoWhhJgR_5CB94cXiHALpqYmW8kb7Qz:2tDDuCXgWh5FZ96KKYGC4b",
        "cookie": "currency=USD;"
      },
    ),
  );
  Api newApi = locator<Api>();
  FilterModel filterModel = locator<FilterModel>();
  NumberFormat numberFormat = locator<NumberFormat>();
  SessionManager sessionManager = locator<SessionManager>();
  String errorMessage;
  bool disposed = false;

  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  @override
  void dispose() {
    disposed = true;
    super.dispose();
  }

  void setState(ViewState viewState) {
    _state = viewState;

    if (!disposed && hasListeners) notifyListeners();
  }

  Map<String, dynamic> tryParseJwt(String token) {
    if (token == null) return null;
    final parts = token.split('.');
    if (parts.length != 3) {
      return null;
    }
    final payload = parts[1];
    var normalized = base64Url.normalize(payload);
    var resp = utf8.decode(base64Url.decode(normalized));

    final payloadMap = json.decode(resp);
    if (payloadMap is! Map<String, dynamic>) {
      return null;
    }
    return payloadMap;
  }
}
