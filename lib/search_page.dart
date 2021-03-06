import 'package:built_collection/built_collection.dart';
import 'package:domain_investor/base_view.dart';
import 'package:domain_investor/custom_appbar.dart';
import 'package:domain_investor/domain.dart';
import 'package:domain_investor/domain_model.dart';
import 'package:domain_investor/filter_page.dart';
import 'package:domain_investor/search_page_model.dart';
import 'package:domain_investor/search_widget.dart';
import 'package:domain_investor/viewstate.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView<SearchPageViewModel>(
        builder: (context, model, child) {
          return Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  GradientAppBar("GoDaddy Investor"),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
                    child: SearchWidget(
                      labelText: "Search",
                      onTextChanged: (value) {
                        model.searchDomains(value);
                      },
                      onFilterClick: () async {
                        final reload = await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FilterPage()),
                        );
                        model.searchDomains(model.searchValue,
                            reload: reload == true);
                      },
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Column(
                            children:
                                _searchList(context, model, model.domainsList)),
                      ),
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
          onModelReady: (model) => model.init(domains[index], searchModel),
          builder: (context, model, child) {
            return Visibility(
              visible: model.display(),
              child: ListTile(
                title: model.name(context),
                subtitle: model.hasError()
                    ? InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Error"),
                                content: Text(model.errorMessage),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("Ok".toUpperCase()),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  )
                                ],
                              );
                            },
                          );
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.warning, color: Colors.yellow[800]),
                          ],
                        ))
                    : model.goValue(),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    model.state == ViewState.Busy
                        ? _shimmer()
                        : model.unavailable()
                            ? Text("Not available")
                            : Text(
                                model.price(),
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Theme.of(context).accentColor),
                              ),
                  ],
                ),
              ),
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
