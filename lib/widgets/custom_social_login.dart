import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';

class CustomSocialLogin extends StatelessWidget{

  Icon? icon;
  late Widget iconWidget;
  String? loginType;

  CustomSocialLogin({
    required this.iconWidget,
    required this.loginType
});

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Container(
      width: width*.35,
      height: width*.11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: primaryDark
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconWidget,
          SizedBox(width: 15,),
          Text(loginType!,style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: primaryDark,
            letterSpacing: .2
          ),)
        ],
      ),
    );
  }
}