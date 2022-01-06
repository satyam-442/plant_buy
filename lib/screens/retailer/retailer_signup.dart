import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/customer/customer_dashboard.dart';
import 'package:plant_buy/screens/retailer/retailer_dashboard.dart';
import 'package:plant_buy/widgets/text_wgt.dart';

class RetailerSignup extends StatelessWidget {
  const RetailerSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;

    TextEditingController _id = TextEditingController();
    TextEditingController _password = TextEditingController();
    RxBool isLoading = RxBool(false);
    RxBool visible = RxBool(true);

    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: width,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(retailer_signup_quote,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: primaryDark),),
                SizedBox(height: 25,),
                Text("Register a store!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: primaryDark),),
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
                        MdiIcons.accountOutline,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: width * .05,
                    ),
                    CustomTextField(hintText: "Owner Name",),
                  ],
                ),
                SizedBox(height: 10,),
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
                        MdiIcons.phone,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: width * .05,
                    ),
                    CustomTextField(hintText: "Phone no.",textInputType: TextInputType.phone,controller: _id,),
                  ],
                ),
                SizedBox(height: 10,),
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
                    CustomTextField(hintText: "E-mail",textInputType: TextInputType.emailAddress,controller: _id,),
                  ],
                ),
                SizedBox(height: 10,),
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
                        MdiIcons.accountOutline,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: width * .05,
                    ),
                    CustomTextField(hintText: "Store Name",),
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
                        "SIGN UP",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 45,),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(text: "By signing up, you agree to our\n",style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: "Terms",style: TextStyle(color: primaryDark,fontSize: 16, fontWeight: FontWeight.w500,decoration: TextDecoration.underline)),
                          TextSpan(text: " and ",style: TextStyle(color: Colors.black,fontSize: 16)),
                          TextSpan(text: "Conditions of use",style: TextStyle(color: primaryDark,fontSize: 16, fontWeight: FontWeight.w500,decoration: TextDecoration.underline)),
                        ]
                    ),),
                ),
                SizedBox(height: 20,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}