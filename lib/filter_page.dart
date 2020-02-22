import 'package:domain_investor/filter_model.dart';
import 'package:domain_investor/locator.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  final model = locator<FilterModel>();

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  double _maxLength = 15;
  RangeValues _rangePrice = RangeValues(0, 200);
  RangeValues _rangeValue = RangeValues(0, 2500);
  bool _estimateValue = false;

  @override
  void initState() {
    _rangeValue = widget.model.rangeValue;
    _rangePrice = widget.model.rangePrice;
    _maxLength = widget.model.maxLength;
    _estimateValue = widget.model.estimateValue;
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
            Card(
              child: Column(
                children: <Widget>[
                  SwitchListTile(
                    title: Text("Estimated value"),
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
            Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Length"),
                  ),
                  Slider.adaptive(
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
                    label:
                        _maxLength == 0 ? "any" : _maxLength.toInt().toString(),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Price"),
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
                      "${_rangePrice.start}",
                      _rangePrice.end == 200 ? "+\$200" : "${_rangePrice.end}",
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Estimated Value"),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: RaisedButton(
            child: Text("Apply"),
            onPressed: () {
              widget.model.maxLength = _maxLength;
              widget.model.rangePrice = _rangePrice;
              widget.model.rangeValue = _rangeValue;
              widget.model.estimateValue = _estimateValue;
              Navigator.pop(context, true);
            },
          ),
        ),
      ),
    );
  }
}
