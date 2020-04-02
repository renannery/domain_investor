import 'package:domain_investor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ActionButtonWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool showChevron;
  final double horizontalPadding;
  final Function onTap;

  ActionButtonWidget(
    this.title,
    this.subtitle, {
    this.showChevron = false,
    this.horizontalPadding = 16.0,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(horizontalPadding, 0, horizontalPadding, 8),
      child: Container(
        decoration: BoxDecoration(
            color: MyApp.cardBackground,
            borderRadius: BorderRadius.circular(9)),
        child: ListTile(
          onTap: onTap,
          contentPadding: EdgeInsets.only(left: 12, right: 12),
          title: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: -0.2,
            ),
          ),
          trailing: Visibility(
            visible: showChevron,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(Icons.chevron_right),
            ),
          ),
          subtitle: subtitle == null
              ? null
              : Text(
                  subtitle,
                  style: TextStyle(
                    fontFamily: 'GDSherpa',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.175,
                  ),
                ),
        ),
      ),
    );
  }
}
