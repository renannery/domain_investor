import 'package:dio/dio.dart';
import 'package:domain_investor/api.dart';
import 'package:domain_investor/locator.dart';
import 'package:domain_investor/viewstate.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class BaseModel extends ChangeNotifier {
  Dio api = Dio(
    BaseOptions(
      contentType: "application/json",
      headers: {
        "authorization":
            "sso-key e4sHxoWhhJgR_5CB94cXiHALpqYmW8kb7Qz:2tDDuCXgWh5FZ96KKYGC4b"
      },
    ),
  );
  NumberFormat numberFormat = locator<NumberFormat>();
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
}