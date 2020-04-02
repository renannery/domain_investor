import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:domain_investor/api.dart';
import 'package:domain_investor/home.dart';
import 'package:domain_investor/locator.dart';
import 'package:domain_investor/login.dart';
import 'package:domain_investor/search_page.dart';
import 'package:flutter/material.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  setupLocator();
  runApp(MyApp());
  await setupNetwork();
}

Future setupNetwork() async {
  Api newApi = locator<Api>();
  // Directory appDocDir = await getApplicationDocumentsDirectory();
  // String appDocPath = appDocDir.path;
  // var cookieJar = PersistCookieJar(dir: appDocPath + "/.cookies/");
  // newApi.dio.interceptors.add(CookieManager(cookieJar));
  // String proxy = Platform.isAndroid ? '<YOUR_LOCAL_IP>:8888' : 'localhost:8888';

  // (newApi.dio.httpClientAdapter as DefaultHttpClientAdapter)
  //     .onHttpClientCreate = (client) {
  //   client.findProxy = (url) {
  //     return 'PROXY $proxy';
  //   };
  //   client.badCertificateCallback =
  //       (X509Certificate cert, String host, int port) => Platform.isAndroid;
  // };
}

class MyApp extends StatelessWidget {
  static final accentColor = Color(0xff01a3a6);
  static final gdBlack = Color.fromRGBO(17, 17, 17, 1);
  static final gdGray = Color(0xffa2a2a2);
  static final gdTertiaryGray = Color(0xffdfdfdf);
  static final separatorColor = Color(0xffe0e0e0);
  static final cardBackground = Color(0xfff6f6f6);
  static final subtitleColor = Color(0xff6c6f75);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Domain Investor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "GDSherpa",
        primaryColor: Colors.white,
        backgroundColor: accentColor,
        primaryColorDark: gdBlack,
        accentColor: accentColor,
        cursorColor: gdBlack,
        textSelectionColor: gdGray,
        textSelectionHandleColor: gdGray,
        buttonTheme: ButtonThemeData(
          buttonColor: accentColor,
          padding: const EdgeInsets.all(20.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          textTheme: ButtonTextTheme.primary,
        ),
        sliderTheme: SliderThemeData(
          activeTrackColor: accentColor,
          activeTickMarkColor: accentColor,
          thumbColor: accentColor,
          valueIndicatorColor: accentColor,
          inactiveTrackColor: gdGray,
        ),

        // Define the default font family.
      ),
      home: Home(),
    );
  }
}
