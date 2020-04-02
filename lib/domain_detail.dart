import 'package:domain_investor/base_view.dart';
import 'package:domain_investor/main.dart';
import 'package:domain_investor/manage_list_model.dart';
import 'package:domain_investor/registered_domain.dart';
import 'package:domain_investor/registered_domain_model.dart';
import 'package:flutter/material.dart';

class DomainDetail extends StatelessWidget {
  final RegisteredDomain registeredDomain;

  DomainDetail(this.registeredDomain);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseView<RegisteredDomainModel>(
        onModelReady: (model) => model.init(registeredDomain),
        builder: (context, model, child) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 120.0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        registeredDomain.domain,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.3999999999999997,
                        ),
                      ),
                      Text(
                        model.expirationDate(),
                        style: TextStyle(
                          fontFamily: 'GDSherpa',
                          fontSize: 14,
                          color: MyApp.subtitleColor,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.175,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: MyApp.cardBackground,
                                borderRadius: BorderRadius.circular(9)),
                            child: ListTile(
                              onTap: () {},
                              title: Text(
                                "Autorenew",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              trailing:
                                  Switch(value: true, onChanged: (value) {}),
                              subtitle: Text(
                                "This name will renew in " +
                                    days(registeredDomain.renewDeadline),
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
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: MyApp.cardBackground,
                                borderRadius: BorderRadius.circular(9)),
                            child: ListTile(
                              onTap: () {},
                              title: Text(
                                "Add Privacy",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              trailing: Icon(Icons.chevron_right),
                              subtitle: Text(
                                "Your registration information is public",
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
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: MyApp.cardBackground,
                                borderRadius: BorderRadius.circular(9)),
                            child: ListTile(
                              onTap: () {},
                              title: Text(
                                "Renew Domain",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              trailing: Icon(Icons.chevron_right),
                              subtitle: Text(
                                "Register this domain for multiple years",
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
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                          child: Container(
                            decoration: BoxDecoration(
                                color: MyApp.cardBackground,
                                borderRadius: BorderRadius.circular(9)),
                            child: ListTile(
                              onTap: () {
                                _settingModalBottomSheet(context);
                              },
                              title: Text(
                                "Advanced Settings",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  letterSpacing: -0.2,
                                ),
                              ),
                              subtitle: Text(
                                "Auth, DNS/NS, Contact Info, WHOIS, Transfer",
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
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          );
        },
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
                      builder: (context) => Text("test"),
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
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
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

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18), topRight: Radius.circular(18)),
    ),
    builder: (BuildContext bc) {
      return ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Text(
                "Advanced Settings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  letterSpacing: -0.225,
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: MyApp.cardBackground,
                      borderRadius: BorderRadius.circular(9)),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      "Get Auth Code",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: MyApp.cardBackground,
                      borderRadius: BorderRadius.circular(9)),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      "DNS Records / Name Servers",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: MyApp.cardBackground,
                      borderRadius: BorderRadius.circular(9)),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      "Contact Info",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: MyApp.cardBackground,
                      borderRadius: BorderRadius.circular(9)),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      "WHOIS Search",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: MyApp.cardBackground,
                      borderRadius: BorderRadius.circular(9)),
                  child: ListTile(
                    onTap: () {},
                    title: Text(
                      "Account Transfer",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}

String days(String renewDeadline) {
  final deadline = DateTime.parse(renewDeadline);
  final now = DateTime.now();

  final difference = now.difference(deadline).inDays.abs();
  return "$difference days";
}
