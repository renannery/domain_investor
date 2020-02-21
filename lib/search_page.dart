import 'package:built_collection/built_collection.dart';
import 'package:domain_investor/base_view.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/domain_model.dart';
import 'package:domain_investor/search_page_model.dart';
import 'package:domain_investor/search_widget.dart';
import 'package:domain_investor/viewstate.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: BaseView<SearchPageViewModel>(
          builder: (context, model, child) {
            return Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SearchWidget(
                      labelText: "Search",
                      onTextChanged: (value) {
                        model.searchDomains(value);
                      },
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                            children:
                                _searchList(context, model, model.domainsList)),
                      ),
                    ),
                  ],
                ),
                Visibility(
                  visible: model.state == ViewState.Busy,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  List<Widget> _searchList(BuildContext context,
      SearchPageViewModel searchModel, List<Domain> domains) {
    final List<Widget> list = List.generate(
      domains.length,
      (index) {
        if (domains.length == 0) {
          return Center(child: Text("no results"));
        }
        return BaseView<DomainModel>(
          onModelReady: (model) => model.init(domains[index]),
          builder: (context, model, child) {
            return ListTile(
              title: Text(model.name()),
              subtitle: model.state == ViewState.Busy
                  ? _shimmer()
                  : Text(model.price()),
              trailing: Text(model.estimatedValue()),
            );
          },
        );
      },
    );
    return list;
  }
}

_shimmer() {
  return SizedBox(
    width: 40.0,
    height: 10.0,
    child: Shimmer.fromColors(
      baseColor: Colors.grey[300],
      highlightColor: Colors.grey[100],
      child: Container(
        width: 10.0,
        height: 10.0,
        color: Colors.white,
      ),
    ),
  );
}
