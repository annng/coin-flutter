import 'package:coin_wallet/common/cons/ResColor.dart';
import 'package:coin_wallet/ui/child/dashboard.dart';
import 'package:coin_wallet/ui/child/component/HorizontalListCoin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../common/widget/TextView.dart';
import '../dummy/Coin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var _selectedIndex = 0;
  late PageController pageController;

  var barItems = <BarItem>[
    BarItem(filledIcon: Icons.home_filled, outlinedIcon: Icons.home_outlined),
    BarItem(filledIcon: Icons.wallet_rounded, outlinedIcon: Icons.wallet_outlined),
    BarItem(filledIcon: Icons.circle, outlinedIcon: Icons.circle_outlined),
    BarItem(filledIcon: Icons.account_circle_rounded, outlinedIcon: Icons.account_circle_outlined)
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        elevation: 0,
        leading:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: ResColor.DARK_GREY,
                shape: BoxShape.circle
              ),
              child: Image.asset("asset/icon/ic_menu.png", width: 20, height: 20,),
            ),
          ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: ResColor.DARK_GREY,
                  shape: BoxShape.circle
              ),
              child: Image.asset("asset/icon/ic_search.png", width: 20, height: 20,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: ResColor.DARK_GREY,
                  shape: BoxShape.circle
              ),
              child: Image.asset("asset/icon/ic_notification.png", width: 20, height: 20,),
            ),
          ),
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          DashboardPage(),
          DashboardPage(),
          DashboardPage(),
          DashboardPage()
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0,0,0,8),
        child: WaterDropNavBar(
          waterDropColor: Colors.black,
          backgroundColor: Colors.white,
          onItemSelected: (int index) {
            setState((){
              _selectedIndex = index;
            });
        }, barItems: barItems,
          selectedIndex: _selectedIndex),
      ),
    );
  }
}
