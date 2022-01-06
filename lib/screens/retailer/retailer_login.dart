import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/retailer/retailer_dashboard.dart';
import 'package:plant_buy/widgets/text_wgt.dart';

class RetailerLogin extends StatelessWidget {

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
                  Text(retailer_login_quote,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: primaryDark),),
                  SizedBox(height: 25,),
                  Text("Login to Store!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: primaryDark),),
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
                          MdiIcons.storeEditOutline,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      CustomTextField(
                        hintText: "Store ID",
                        textInputType: TextInputType.text,
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
                  SizedBox(height: 25,),
                  InkWell(
                    onTap: (){
                      Get.to(RetailerDashboard());
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
                  /*Center(
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
                  ),*/
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}