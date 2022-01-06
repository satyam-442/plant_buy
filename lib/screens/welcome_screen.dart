import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/customer/customer_auth.dart';
import 'package:plant_buy/screens/retailer/retailer_auth.dart';
import 'package:plant_buy/widgets/gradian_button.dart';

class WelcomeScreen extends StatelessWidget {
  static const id = "/Sign_In_select";
  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    height: height * 0.06,
                    width: width*.15,
                    child: Image.asset('assets/images/green-leaf-logo.png'),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: height * 0.06,
                    width: width*.7,
                    child: Text("Dr. PLANTAE",
                      style: TextStyle(
                          fontSize: 22,
                          color: primaryDark,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1.5
                      ),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              height: height * 0.35,
              width: width * .35,
              child: Image.asset('assets/images/logo.png'),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
              alignment: Alignment.center,
              height: height * 0.053,
              width: width * 1,
              child: Text(
                'Dr. Plantae',
                style: TextStyle(
                    color: primaryDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
              alignment: Alignment.center,
              height: height * 0.1,
              width: width * 1,
              child: Text(
                appSlogan,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: primaryDark,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    letterSpacing: .7),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
              height: height * 0.10,
              width: width * 1,
              child: Text(
                'Proceed as',
                style: TextStyle(
                    color: primaryDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradiantButton(
                  callBack: () async {
                    Get.to(() => CustomerAuthPage());
                  },
                  text: "Customer",
                  margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  height: height * 0.065,
                  width: width*.4,
                ),
                GradiantButton(
                  callBack: () {
                    Get.to(() => RetailerAuthPage());
                  },
                  margin: EdgeInsets.fromLTRB(10, 10, 20, 10),
                  height: height * 0.065,
                  width: width*.4,
                  isGradiantEnable: false,
                  text: "Retailer",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
