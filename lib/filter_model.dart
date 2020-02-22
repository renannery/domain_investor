import 'package:flutter/material.dart';

class FilterModel {
  RangeValues rangeValue = RangeValues(0, 2500);
  RangeValues rangePrice = RangeValues(0, 200);
  double maxLength = 15;
  bool estimateValue = false;
  String startsWith;
  String contains;
  String endsWith;
}
