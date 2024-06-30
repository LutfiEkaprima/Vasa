import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:vasa/screens/budget.dart';
import 'package:vasa/screens/dashboard.dart';
import 'package:vasa/screens/goal.dart';
import 'package:vasa/screens/profile.dart';

class BotNav extends StatefulWidget {

  const BotNav({super.key});

  @override
  _BotNavState createState() => _BotNavState();
}

class _BotNavState extends State<BotNav> {
  int _pageIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = [
    BudgetPage(),
    GoalPage(),
    DashboardPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_pageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(Icons.account_balance_wallet, size: 30),
          Icon(Icons.flag, size: 30),
          Icon(Icons.dashboard, size: 30),
          Icon(Icons.person, size: 30),
        ],
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.blueAccent,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
