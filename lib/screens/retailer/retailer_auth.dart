import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/customer/customer_login.dart';
import 'package:plant_buy/screens/customer/customer_signup.dart';
import 'package:plant_buy/screens/retailer/retailer_login.dart';
import 'package:plant_buy/screens/retailer/retailer_signup.dart';
import 'package:plant_buy/screens/welcome_screen.dart';

class RetailerAuthPage extends StatefulWidget {
  const RetailerAuthPage({Key? key}) : super(key: key);

  @override
  _RetailerAuthPageState createState() => _RetailerAuthPageState();
}

class _RetailerAuthPageState extends State<RetailerAuthPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    double height = Get.height;
    double width = Get.width;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(
                        MdiIcons.arrowLeftThin,
                        size: 30,
                      ),
                      onTap: () {
                        Get.back();
                      },
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 15),
                        width: width * .8,
                        child: Text(
                          "PROCEED AS Retailer!",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,),
                        )),
                  ],
                ),
              ),
              Container(
                height: height * .1,
                child: Align(
                  alignment: Alignment.center,
                  child: TabBar(
                    controller: _tabController,
                    labelColor: primaryDark,
                    //isScrollable: true,
                    //labelPadding: EdgeInsets.only(left: 20,right: 20),
                    unselectedLabelColor: Colors.grey,
                    indicator: CircleTabIndicator(color: primaryDark, radius: 5),
                    labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    tabs: [
                      Tab(
                        text: "LOGIN STORE",
                      ),
                      Tab(text: "ADD STORE"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: width,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      RetailerLogin(),
                      RetailerSignup(),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
