import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final String? initialValue;
  final Function(String)? onTextChanged;
  final FormFieldSetter<String>? onSaved;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;
  final String? hintText;
  final bool? obsecure;
  final bool? isEnable;
  final bool? suffix;
  final int? maxLength;
  final VoidCallback? suffixCallBack;
  Icon? preffix;

  CustomTextField({
    this.controller,
    this.validator,
    this.maxLength,
    this.suffix = false,
    this.textCapitalization,
    this.onTextChanged,
    this.onSaved,
    this.initialValue,
    this.inputFormatter,
    this.textInputType = TextInputType.text,
    this.hintText,
    this.suffixCallBack,
    this.isEnable = true,
    this.obsecure = false,
  });

  @override
  Widget build(BuildContext context) {
    double height = Get.height;
    double width = Get.width;
    return Container(
      width: width * .7,
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onSaved: (value) {
          if (onSaved != null) onSaved!(value!);
        },
        validator: validator,
        controller: controller,
        keyboardType: textInputType,
        obscureText: obsecure!,
        enabled: isEnable,
        textInputAction: TextInputAction.next,
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        inputFormatters: inputFormatter,
        onChanged: (value) {
          if (onTextChanged != null) onTextChanged!(value);
        },
        initialValue: initialValue,
        maxLength: maxLength,
        cursorColor: primaryDark,
        decoration: InputDecoration(
            suffixIcon: suffix!
                ? InkWell(
                    onTap: suffixCallBack,
                    child: Icon(obsecure! ? Icons.visibility_off : Icons.visibility,color: primaryDark,),
                  )
                : null,
            border: myInputBorder(),
            enabledBorder: myInputBorder(),
            focusedBorder: myFocusBorder(),
            labelText: hintText,
            hintText: hintText,
            labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            floatingLabelBehavior: FloatingLabelBehavior.always),
      ),
    );
  }
}
