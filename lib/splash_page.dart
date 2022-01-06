import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/log_agent_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Get.off(SelectAuthPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/green-leaf-logo.png", height: 90 , width: 90 ,),
            SizedBox(height: 10 ,),
            Text("Dr. Plantae",
              style: GoogleFonts.poppins(
                  color: primaryDark,
                  fontSize: 22 
              ),),
            SizedBox(height: 10 ,),
            Text("complete plant care",
              style: GoogleFonts.nunito(
                  fontWeight: FontWeight.bold,
                  color: primaryDark
              ),)
          ],
        ),
      ),
    );
  }
}
