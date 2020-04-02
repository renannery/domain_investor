import 'package:domain_investor/base_model.dart';
import 'package:domain_investor/registered_domain.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RegisteredDomainModel extends BaseModel {
  RegisteredDomain registeredDomain;

  Future init(RegisteredDomain d) async {
    registeredDomain = d;
  }

  Widget name(BuildContext context) {
    final domainElements = registeredDomain.domain.split(".");
    final tld = domainElements.sublist(1, domainElements.length).join(".");

    return _domainName(context, registeredDomain.domain, tld);
  }

  String expirationDate() {
    String date = new DateFormat("MMMM d, yyyy")
        .format(DateTime.parse(registeredDomain.expires));
    return "Expires on $date";
  }

  bool hasAutoRenew() {
    return registeredDomain.renewAuto;
  }

  bool hasTransferLock() {
    return registeredDomain.transferProtected;
  }

  Widget _domainName(BuildContext context, String fqdn, String tld) {
    final style = TextStyle(color: Theme.of(context).accentColor);
    final spans = _getSpans(fqdn, "." + tld, style);

    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.body1.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
              letterSpacing: -0.225,
            ),
        children: spans,
      ),
    );
  }

  List<TextSpan> _getSpans(String text, String matchWord, TextStyle style) {
    List<TextSpan> spans = [];
    int spanBoundary = 0;

    do {
      // look for the next match
      final startIndex = text.indexOf(matchWord, spanBoundary);

      // if no more matches then add the rest of the string without style
      if (startIndex == -1) {
        spans.add(TextSpan(text: text.substring(spanBoundary)));
        return spans;
      }

      // add any unstyled text before the next match
      if (startIndex > spanBoundary) {
        spans.add(TextSpan(text: text.substring(spanBoundary, startIndex)));
      }

      // style the matched text
      final endIndex = startIndex + matchWord.length;
      final spanText = text.substring(startIndex, endIndex);
      spans.add(TextSpan(text: spanText, style: style));

      // mark the boundary to start the next search from
      spanBoundary = endIndex;

      // continue until there are no more matches
    } while (spanBoundary < text.length);

    return spans;
  }
}
