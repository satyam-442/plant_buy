import 'package:flutter/material.dart';
import 'package:plant_buy/constants/constant.dart';

class GradiantButton extends StatelessWidget {
  final double? height;
  final double? width;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final String? text;
  final VoidCallback? callBack;

  final bool isGradiantEnable;
  GradiantButton({
    this.height,
    this.width,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.isGradiantEnable = true,
    this.text,
    this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
        alignment: Alignment.center,
        margin: margin,
        padding: padding,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: isGradiantEnable
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    primaryMedium,
                    primaryDark,
                  ],
                )
              : null,
          border: !isGradiantEnable? Border.all(
            color: Colors.black,
            width: 1.5
          ): null,
        ),
        child: Text(
          text!,
          style: TextStyle(
              color: isGradiantEnable ? Colors.white : Colors.black,
              fontSize: 30),
        ),
      ),
    );
  }
}
