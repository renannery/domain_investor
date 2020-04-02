import 'package:domain_investor/base_view.dart';
import 'package:domain_investor/domain_detail.dart';
import 'package:domain_investor/main.dart';
import 'package:domain_investor/manage_list_model.dart';
import 'package:domain_investor/registered_domain.dart';
import 'package:domain_investor/registered_domain_model.dart';
import 'package:flutter/material.dart';

class ManageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          BaseView<ManageListModel>(
            onModelReady: (model) => model.init(),
            builder: (context, model, child) {
              return SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 120.0,
                pinned: true,
                centerTitle: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "Domains (${model.domainsList.length})",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      letterSpacing: -0.3999999999999997,
                    ),
                  ),
                ),
              );
            },
          ),
          BaseView<ManageListModel>(
            onModelReady: (model) => model.init(),
            builder: (context, manageModel, child) {
              return SliverPadding(
                padding: const EdgeInsets.all(0.0),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    _searchList(context, manageModel, manageModel.domainsList),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _searchList(
    BuildContext context,
    ManageListModel manageModel,
    List<RegisteredDomain> domains,
  ) {
    final List<Widget> list = List.generate(
      domains.length,
      (index) {
        if (domains.length == 0) {
          return Center(child: Text("no results"));
        }
        return BaseView<RegisteredDomainModel>(
          onModelReady: (model) => model.init(domains[index]),
          builder: (context, model, child) {
            return Container(
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: MyApp.separatorColor, width: 0.5),
                    top: BorderSide(color: MyApp.separatorColor, width: 0.5),
                  ),
                  color: Colors.white),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DomainDetail(model.registeredDomain),
                      settings: RouteSettings(name: "Merchant Detail"),
                    ),
                  );
                },
                title: model.name(context),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ImageIcon(
                      AssetImage("assets/ic_renew.png"),
                      size: 16,
                      color: model.hasAutoRenew()
                          ? MyApp.accentColor
                          : MyApp.gdTertiaryGray,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    ImageIcon(
                      AssetImage("assets/ic_lock.png"),
                      size: 16,
                      color: model.hasAutoRenew()
                          ? MyApp.accentColor
                          : MyApp.gdTertiaryGray,
                    ),
                  ],
                ),
                subtitle: Text(
                  model.expirationDate(),
                  style: TextStyle(
                    fontFamily: 'GDSherpa',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    letterSpacing: -0.175,
                  ),
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
