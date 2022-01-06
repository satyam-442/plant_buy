import 'package:flutter/material.dart';
import 'package:plant_buy/constants/constant.dart';

class CustomInput extends StatelessWidget {

  final String hintText;

  CustomInput({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12 ),
        color: Color(0xFFEAEAEA),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
            vertical: 18 ,
            horizontal: 24 
          )
        ),
        style: Constants.regularDarkText,
      ),
    );
  }

  static Widget textField(String hint,
      {bool isPassword = false,
        bool isNumber = false,
        int? length,
        TextEditingController? textController,
        int lines = 1,
        InkWell? suffixIconW,
        String? pwdText,
        TextInputType? type}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8 ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12 ),
        color: Color(0xFFEAEAEA),
      ),
      child: TextField(
        obscureText: isPassword,
        controller: textController,
        keyboardType: type,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            suffixIcon: suffixIconW,
            contentPadding: EdgeInsets.symmetric(
                vertical: 12 ,
                horizontal: 24 
            )
        ),
        style: Constants.regularDarkText,
      ),
    );
  }
}
