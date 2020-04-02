import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/viewstate.dart';

class LoginModel extends BaseModel {
  Future<bool> login(String username, String password) async {
    // nzY2v&@V3$R@U8FN
    setState(ViewState.Busy);
    final token = await newApi.login(username, password);
    final jwt = tryParseJwt(token);
    final String customerId = jwt["cid"];

    sessionManager.customerId = customerId;
    return customerId.isNotEmpty;
  }
}
