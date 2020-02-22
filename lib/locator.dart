import 'package:domain_investor/api.dart';
import 'package:domain_investor/domain_model.dart';
import 'package:domain_investor/filter_model.dart';
import 'package:domain_investor/search_page_model.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => SearchPageViewModel());
  locator.registerLazySingleton(() => FilterModel());
  locator.registerFactory(() => DomainModel());
  locator.registerLazySingleton(
    () => NumberFormat.simpleCurrency(
      locale: 'en_US',
    ),
  );
}
