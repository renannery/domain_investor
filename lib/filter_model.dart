import 'package:flutter/material.dart';

class FilterModel {
  RangeValues rangeValue = RangeValues(0, 2500);
  RangeValues rangePrice = RangeValues(0, 200);
  double maxLength = 0;
  bool estimateValue = false;
  bool availableOnly = false;
  String startsWith;
  String contains;
  String endsWith;
}
