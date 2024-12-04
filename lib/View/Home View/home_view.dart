import 'package:coffee_shop/View/Constants/conts.dart';
import 'package:flutter/material.dart';

import '../Cart View/cart_view.dart';
import '../Components/bottom_nav_bar.dart';
import '../ShopView/shop_view.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _views = [ShopView(), CartView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar:
          BottomNavBar(onTabChange: (index) => navigateBottomBar(index)),
      body: _views[_selectedIndex],
    );
  }
}
