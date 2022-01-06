import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/widgets/text_wgt.dart';

class ForgotPassword extends StatelessWidget {

  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {

    width = Get.width;
    height = Get.height;

    return Scaffold(
      body: Container(
        width: width,
          height: height,
        padding: EdgeInsets.all(width*.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("FORGOT PASSWORD",style: GoogleFonts.josefinSans(
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: height*.01,),
            Text("Enter your email to request a password reset",style: GoogleFonts.josefinSans(
                fontSize: 23,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: height*.07,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: width * .13,
                  width: width * .13,
                  decoration: BoxDecoration(
                      color: inputPrimaryLight,
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    MdiIcons.at,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: width * .05,
                ),
                CustomTextField(
                  hintText: "E-mail",
                  textInputType: TextInputType.emailAddress,),
              ],
            ),
            SizedBox(height:  height*.03,),
            InkWell(
              onTap: (){
                Get.back();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                height: height * 0.065,
                width: width,
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
                    "REQUEST NOW",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ),
            ),
            SizedBox(height: height*.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Having problem?",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),),
                GestureDetector(
                  onTap: (){
                    /*Get.to(() => ForgotPassword());*/
                    Get.bottomSheet(Container(
                      padding: EdgeInsets.all(25),
                      height: height*.4,
                      child: ListView(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Need Help!",style: GoogleFonts.josefinSans(
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("points to be written",style: TextStyle(
                              fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                          Text("points to be written",style: TextStyle(
                            fontSize: 18,
                          ),),
                        ],
                      ),
                    ),
                    isDismissible: true,
                    enterBottomSheetDuration: Duration(
                      milliseconds: 500
                    ),
                    exitBottomSheetDuration: Duration(
                        milliseconds: 500
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20)
                      )
                    ),
                    backgroundColor: primaryLight);
                  },
                  child: Text(" Need Help",style: TextStyle(
                      fontSize: 20,
                      color: primaryDark,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
