import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/welcome_screen.dart';
import 'package:plant_buy/widgets/gradian_button.dart';

class SelectAuthPage extends StatelessWidget {
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
                    letterSpacing: 1,
                wordSpacing: 1),
              ),
            ),
            SizedBox(height: height*.2,),
            InkWell(
              onTap: (){
                Get.to(WelcomeScreen());
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                height: height * 0.065,
                width: width * .8,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      primaryMedium,
                      primaryDark,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
