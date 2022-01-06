import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? initialValue;
  final Function(String)? onTextChanged;
  final Function(String)? onSaved;
  final List<TextInputFormatter>? inputFormatter;
  final TextInputType? textInputType;
  final TextCapitalization? textCapitalization;
  final String? hintText;
  final bool? obsecure;
  final bool? isEnable;
  final bool? suffix;
  final int? maxLength;
  final VoidCallback? suffixCallBack;


  TextFieldWidget({
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
    return TextFormField(
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
      decoration: InputDecoration(
          suffixIcon: suffix!
              ? InkWell(
                  onTap: suffixCallBack,
                  child: Icon(
                    obsecure! ? Icons.visibility_off : Icons.visibility,
                  ),
                )
              : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
          ),
          /*  border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ), */

          fillColor: Color(0xffF2F1EF),
          filled: true,
          contentPadding: EdgeInsets.fromLTRB(30, 10, 30, 10),
          hintText: hintText),
    );
  }
}
