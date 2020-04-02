import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/model/shopper_model.dart';
import 'package:domain_investor/viewstate.dart';

class AccountModel extends BaseModel {
  Shopper shopper;

  Future init() async {
    setState(ViewState.Busy);
    shopper = await newApi.shopperDetails("257129053");
    setState(ViewState.Idle);
  }

  String name() {
    return shopper.nameFirst + " " + shopper.nameLast;
  }

  String id() {
    return shopper.shopperId;
  }

  String email() {
    return shopper.email;
  }
}
