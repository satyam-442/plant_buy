import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/customer/customer_cart_page.dart';
import 'package:plant_buy/screens/customer/customer_home_screen.dart';
import 'package:plant_buy/screens/customer/customer_profile_page.dart';
import 'package:plant_buy/screens/customer/customer_search_page.dart';
import 'package:plant_buy/widgets/category_card.dart';

class CustomerDashboard extends StatefulWidget {
  const CustomerDashboard({Key? key}) : super(key: key);

  @override
  State<CustomerDashboard> createState() => _CustomerDashboardState();
}

class _CustomerDashboardState extends State<CustomerDashboard> {
  int _current = 0;
  double winHeight = 0;
  double winWidth = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  final _imagePaths = [
    'assets/images/flower_one.jpg',
    'assets/images/flower_two.jpg',
    'assets/images/flower_three.jpg',
  ];

  int currentIndex = 0;

  final screens = [
    CustomerHomeScreen(),
    CustomerSearchPage(),
    CustomerCartPage(),
    CustomerProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    winHeight = Get.height;
    winWidth = Get.width;
    return SafeArea(
        child: Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
          bottomNavigationBar: BottomNavyBar(
            curve: Curves.ease,
            animationDuration: Duration(
              milliseconds:800
            ),
            selectedIndex: currentIndex,
            onItemSelected: (index) {
              setState(() => currentIndex = index);
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                  title: Text('Home'),
                  icon: Icon(Icons.home),
                  activeColor: primaryDark,
                  inactiveColor: CupertinoColors.black,
                  textAlign: TextAlign.center
              ),
              BottomNavyBarItem(
                  title: Text('Search'),
                  icon: Icon(MdiIcons.shoppingSearch),
                  activeColor: primaryDark,
                  inactiveColor: CupertinoColors.black,
                  textAlign: TextAlign.center
              ),
              BottomNavyBarItem(
                  title: Text('Cart'),
                  icon: Icon(MdiIcons.cart),
                  activeColor: primaryDark,
                  inactiveColor: CupertinoColors.black,
                  textAlign: TextAlign.center
              ),
              BottomNavyBarItem(
                  title: Text('Profile'),
                  icon: Icon(MdiIcons.faceManProfile),
                  activeColor: primaryDark,
                  inactiveColor: CupertinoColors.black,
                  textAlign: TextAlign.center
              ),
            ],
          ),
        ));
  }
}
/*Plant Categories:
    Herbs,
    Shrubs,
    Trees,
    Climbers,
    Creepers;*/
