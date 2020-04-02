import 'package:domain_investor/api.dart';
import 'package:domain_investor/domain_model.dart';
import 'package:domain_investor/filter_model.dart';
import 'package:domain_investor/login_model.dart';
import 'package:domain_investor/manage_list_model.dart';
import 'package:domain_investor/registered_domain_model.dart';
import 'package:domain_investor/search_page_model.dart';
import 'package:domain_investor/session_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => SessionManager());
  locator.registerLazySingleton(() => SearchPageViewModel());
  locator.registerLazySingleton(() => FilterModel());
  locator.registerLazySingleton(
    () => NumberFormat.simpleCurrency(
      locale: 'en_US',
    ),
  );
  locator.registerFactory(() => DomainModel());
  locator.registerFactory(() => LoginModel());
  locator.registerFactory(() => ManageListModel());
  locator.registerFactory(() => RegisteredDomainModel());
}
