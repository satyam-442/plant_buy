import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_view/pin_code_view.dart';

class CustomerPhoneVerify extends StatefulWidget {

  @override
  _CustomerPhoneVerifyState createState() => _CustomerPhoneVerifyState();
}

class _CustomerPhoneVerifyState extends State<CustomerPhoneVerify> {

  final FirebaseAuth auth = FirebaseAuth.instance;

  double height = Get.height;
  double width = Get.width;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
            padding: EdgeInsets.all(8),
            height: height,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      padding: EdgeInsets.all(15),
                      height: width * 0.35,
                      width: width* 0.35,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    width: width,
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Text("CODE",style: GoogleFonts.josefinSans(
                          fontWeight: FontWeight.bold,
                          fontSize: 55,
                        ),
                        textAlign: TextAlign.center,),
                        Text("Dr. Plantae needs to verify your phone. We have send you an OTP to the \n +91-9049927365",style: GoogleFonts.nunito(
                          fontWeight: FontWeight.bold, fontSize: 18,),
                          textAlign: TextAlign.center,),
                        PinCode(
                          title: Text(
                            "Lock Screen",
                            style: TextStyle(
                                color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),

                          subTitle: Text(
                            "Enter the pin code",
                            style: TextStyle(color: Colors.white),
                          ),
                          codeLength: 6,
                          // you may skip correctPin and plugin will give you pin as
                          // call back of [onCodeFail] before it clears pin
                          correctPin: "123456",
                          onCodeSuccess: (code) {
                            print(code);
                          },
                          onCodeFail: (code) {
                            print(code);
                          },
                        )
                      ],
                    )
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
