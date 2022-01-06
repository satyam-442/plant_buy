import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/customer/customer_dashboard.dart';
import 'package:plant_buy/screens/forgot_password.dart';
import 'package:plant_buy/widgets/custom_social_login.dart';
import 'package:plant_buy/widgets/text_wgt.dart';

class CustomerLogin extends StatelessWidget {

  TextEditingController _id = TextEditingController();
  TextEditingController _password = TextEditingController();
  RxBool isLoading = RxBool(false);
  RxBool visible = RxBool(true);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GetStorage getStorage = GetStorage();
  var input;

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: width,
            padding: EdgeInsets.all(15),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(customer_login_quote,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: primaryDark),),
                  SizedBox(height: 25,),
                  Text("Login to Account!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: primaryDark),),
                  //TextFieldWidget(),
                  SizedBox(height: 50,),
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
                        textInputType: TextInputType.emailAddress,
                      controller: _id,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Obx(() => Row(
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
                          MdiIcons.lockOutline,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      CustomTextField(
                        hintText: "Password",
                        textInputType: TextInputType.visiblePassword,
                        suffix: true,
                        suffixCallBack: () {
                          visible.value = !visible.value;
                        },
                        obsecure: visible.value,
                        controller: _password,
                      ),
                    ],
                  )),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
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
                        child: Text("Need help!",style: TextStyle(
                          fontSize: 20,
                          color: primaryDark,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(() => ForgotPassword());
                        },
                        child: Text("FORGOT PASSWORD?",style: TextStyle(
                            fontSize: 20,
                            color: primaryDark,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  InkWell(
                    onTap: (){
                      Get.to(() => CustomerDashboard());
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
                          "LOGIN",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Center(
                    child: Text(
                      "or sign in with",
                      textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomSocialLogin(iconWidget: Icon(MdiIcons.facebook,color: primaryDark,), loginType: "Facebook",),
                      CustomSocialLogin(iconWidget: Icon(MdiIcons.google,color: primaryDark,), loginType: "Google",),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=>CustomerDashboard());
                    },
                    child: Center(
                      child: Text(
                        "Login Later, Explore Now!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.nunito(
                            fontSize: 16,
                            color: primaryDark,
                            fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}