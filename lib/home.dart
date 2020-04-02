import 'package:domain_investor/main.dart';
import 'package:domain_investor/manage_list.dart';
import 'package:domain_investor/view/account_view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

enum TabItem { home, manage, account }

class _Home extends State<Home> {
  int _currentIndex = 0;
  TabItem _currentTab = TabItem.home;

  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.manage: GlobalKey<NavigatorState>(),
    TabItem.account: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var tab = _navigatorKeys[_currentTab];

        if (_currentTab != TabItem.home && !tab.currentState.canPop()) {
          _selectTab(TabItem.home, 0);
          return false;
        }

        if (_currentTab == TabItem.home && !tab.currentState.canPop()) {
          return true;
        }

        if (tab.currentState.canPop()) {
          _navigatorKeys[_currentTab]
              .currentState
              .popUntil((route) => route.isFirst);
        }

        return false;
      },
      child: Scaffold(
          body: IndexedStack(
            index: _currentIndex,
            children: <Widget>[
              Navigator(
                key: _navigatorKeys[TabItem.home],
                onGenerateRoute: (route) => MaterialPageRoute(
                  settings: route,
                  builder: (context) => Text("first tab"),
                ),
              ),
              Navigator(
                key: _navigatorKeys[TabItem.manage],
                onGenerateRoute: (route) => MaterialPageRoute(
                  settings: route,
                  builder: (context) => ManageList(),
                ),
              ),
              Navigator(
                key: _navigatorKeys[TabItem.account],
                onGenerateRoute: (route) => MaterialPageRoute(
                  settings: route,
                  builder: (context) => AccountView(),
                ),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) => _onTap(index, context),
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/ic_home.png"),
                  color: _currentTab == TabItem.home
                      ? MyApp.accentColor
                      : MyApp.gdGray,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(
                    color: _currentTab == TabItem.home
                        ? MyApp.accentColor
                        : MyApp.gdGray,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/ic_manage.png"),
                  color: _currentTab == TabItem.manage
                      ? MyApp.accentColor
                      : MyApp.gdGray,
                ),
                title: Text(
                  "Domains",
                  style: TextStyle(
                    color: _currentTab == TabItem.manage
                        ? MyApp.accentColor
                        : MyApp.gdGray,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/ic_account.png"),
                  color: _currentTab == TabItem.account
                      ? MyApp.accentColor
                      : MyApp.gdGray,
                ),
                title: Text(
                  "Account",
                  style: TextStyle(
                    color: _currentTab == TabItem.account
                        ? MyApp.accentColor
                        : MyApp.gdGray,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ],
          )),
    );
  }

  void _selectTab(TabItem tabItem, int index) {
    if (tabItem == _currentTab) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentIndex = index;
        return _currentTab = tabItem;
      });
    }
  }

  void _onTap(int index, BuildContext context) {
    switch (index) {
      case 0:
        _selectTab(TabItem.home, index);
        break;
      case 1:
        _selectTab(TabItem.manage, index);
        break;
      case 2:
        _selectTab(TabItem.account, index);
        break;
      default:
    }
  }
}
