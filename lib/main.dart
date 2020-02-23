import 'package:domain_investor/locator.dart';
import 'package:domain_investor/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final accentColor = Color(0xff077579);
    final gdBlack = Color.fromRGBO(17, 17, 17, 1);
    final gdYellow = Color.fromRGBO(254, 211, 23, 1);
    final gdGray = Color(0xffd3dbe0);

    return MaterialApp(
      title: 'Domain Investor',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
      home: SearchPage(),
    );
  }
}
