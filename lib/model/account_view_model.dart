import 'package:dio/dio.dart';
import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/registered_domain.dart';
import 'package:domain_investor/viewstate.dart';

class ManageListModel extends BaseModel {
  List<RegisteredDomain> domainsList = List();
  String searchValue = "";

  Future init() async {
    setState(ViewState.Busy);
    final result = await newApi.manage(sessionManager.customerId);
    domainsList = result;
    setState(ViewState.Idle);
  }

  Future searchDomains(String value, {bool reload = false}) async {
    // if (value.isEmpty) {
    //   domainsList.clear();
    //   setState(ViewState.Idle);
    //   return;
    // }

    // if (searchValue == value && !reload) {
    //   return;
    // }
    // searchValue = value;
    // domainsList.clear();

    // try {
    //   setState(ViewState.Busy);

    //   final values = searchValue.split(RegExp("[ ,]"));
    //   print("Search $values");

    //   setState(ViewState.Idle);
    // } catch (e) {
    //   setState(ViewState.Idle);
    // }
  }

  // Future<Response> loadSearch(String domain) async {
  //   return await api
  //       .get(
  //           "https://www.godaddy.com/domainfind/v1/search/spins?q=$domain&pagestart=0&pagesize=34")
  //       .catchError(
  //     (error) {
  //       var message = (error as DioError).response.data["message"].toString();
  //       errorMessage = message;
  //       print(message);
  //       setState(ViewState.Idle);
  //     },
  //   );
  // }
}
