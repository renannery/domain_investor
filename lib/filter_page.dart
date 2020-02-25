import 'package:domain_investor/filter_model.dart';
import 'package:domain_investor/locator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FilterPage extends StatefulWidget {
  final model = locator<FilterModel>();
  final numberFormat = locator<NumberFormat>();

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  double _maxLength = 0;
  RangeValues _rangePrice = RangeValues(0, 200);
  RangeValues _rangeValue = RangeValues(0, 2500);
  bool _estimateValue = false;
  bool _availableOnly = false;

  String formattedPrice(int number) {
    widget.numberFormat.maximumFractionDigits = 0;
    return widget.numberFormat.format(number);
  }

  String priceRange(int start, int end) {
    return "${formattedPrice(start)} - ${formattedPrice(end)}";
  }

  @override
  void initState() {
    _rangeValue = widget.model.rangeValue;
    _rangePrice = widget.model.rangePrice;
    _maxLength = widget.model.maxLength;
    _estimateValue = widget.model.estimateValue;
    _availableOnly = widget.model.availableOnly;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    SwitchListTile(
                      title: Row(
                        children: <Widget>[
                          Text(
                            "GoValue™",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              "assets/govalue.png",
                              height: 16,
                            ),
                          ),
                        ],
                      ),
                      value: _estimateValue,
                      onChanged: (checked) {
                        setState(
                          () {
                            _estimateValue = checked;
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: <Widget>[
                    SwitchListTile(
                      title: Row(
                        children: <Widget>[
                          Text(
                            "Available only",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20),
                          ),
                        ],
                      ),
                      value: _availableOnly,
                      onChanged: (checked) {
                        setState(
                          () {
                            _availableOnly = checked;
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Text(
                        "Length",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                      child: Text(
                        _maxLength == 0 ? "any" : "${_maxLength.toInt()}",
                      ),
                    ),
                    Slider(
                      value: _maxLength.toDouble(),
                      onChanged: (double newValue) {
                        setState(
                          () {
                            _maxLength = newValue;
                          },
                        );
                      },
                      min: 0,
                      max: 15,
                      divisions: 3,
                      label: _maxLength == 0
                          ? "any"
                          : _maxLength.toInt().toString(),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Text(
                        "Price",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                      child: Text(
                        "${priceRange(_rangePrice.start.toInt(), _rangePrice.end.toInt())}",
                      ),
                    ),
                    RangeSlider(
                      values: _rangePrice,
                      onChanged: (RangeValues values) {
                        setState(() {
                          _rangePrice = values;
                        });
                      },
                      min: 0,
                      max: 200,
                      divisions: 20,
                      labels: RangeLabels(
                        formattedPrice(_rangePrice.start.toInt()),
                        _rangePrice.end == 200
                            ? "+" + formattedPrice(_rangePrice.end.toInt())
                            : formattedPrice(_rangePrice.end.toInt()),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Text(
                        "Estimated Value",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
                      child: Text(
                        "${priceRange(_rangeValue.start.toInt(), _rangeValue.end.toInt())}",
                      ),
                    ),
                    RangeSlider(
                      values: _rangeValue,
                      onChanged: (RangeValues values) {
                        setState(() {
                          _rangeValue = values;
                        });
                      },
                      min: 0,
                      max: 2500,
                      divisions: 20,
                      labels: RangeLabels(
                        "${_rangeValue.start}",
                        _rangeValue.end == 2500
                            ? "+\$2,500"
                            : "${_rangeValue.end}",
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: RaisedButton(
            child: Text(
              "Apply",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () {
              widget.model.maxLength = _maxLength;
              widget.model.rangePrice = _rangePrice;
              widget.model.rangeValue = _rangeValue;
              widget.model.estimateValue = _estimateValue;
              widget.model.availableOnly = _availableOnly;
              Navigator.pop(context, true);
            },
          ),
        ),
      ),
    );
  }
}
