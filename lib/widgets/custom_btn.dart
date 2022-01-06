import 'package:flutter/material.dart';
import 'package:plant_buy/constants/constant.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  CustomBtn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2 ,
          color: primaryMedium
        ),
        borderRadius: BorderRadius.circular(25 ),
      ),
      margin: EdgeInsets.symmetric(
        vertical: 8 ,
        horizontal: 10 
      ),
      child: Text(text,style: Constants.regularHeading,),
    );
  }
}

class CustomBtnFill extends StatelessWidget {
  final String text;
  CustomBtnFill({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40 ,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: primaryMedium
      ),
      margin: EdgeInsets.symmetric(
          vertical: 8 ,
          horizontal: 10 
      ),
      child: Text(
        text,style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white),),
    );
  }
}