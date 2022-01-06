import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color LogoColor =Color(0xFF426347);
const Color primaryDark =Color(0xFF426347);
const Color primaryMedium =Color(0xFF98AE70);
const Color primaryLight =Color(0xFFF3F4F6);
const Color primaryFeedbackLight =Color(0xFFD9F5D9);
const Color inputPrimaryLight =Color(0xFFEBECEF);

showSnackBar(String title, String message) {
  return Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    duration: Duration(seconds: 3),
    messageText: Text(
      message,
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
  );
}

SnackBar mySnackBar(String text,{String? message}) {
  return SnackBar(content: Text(text),
    elevation: 10,
    backgroundColor: LogoColor,
    duration: Duration(
        milliseconds: 2000),
  );
}

const appSlogan = "Welcome to Plant kingdom. \nDigital technologies have become ubiquitous and part of everyday life and today we are here. A platform to know about complete care for your plants. \nJoin us!";
const customer_signup_quote = "Concerned about your plants?\nYou're in right place";
const customer_login_quote = "No need to be concerned anymore\nDr. Plantae is here";
const retailer_signup_quote = "Own plant business and need expansion?\nYou're in right place";
const retailer_login_quote = "Login to Dr. Plantae and manage\nyour plant business";

class Constants{
  static TextStyle regularHeading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black
  );

  static TextStyle boldHeading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w600,
    color: Colors.black);

  static TextStyle regularDarkText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black);

  static Widget version(){
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: Container(
          child: Text("Plantae Inc. | Ver 1.0.0",style: GoogleFonts.nunito(
              fontWeight: FontWeight.bold,
              letterSpacing: .3
          ),),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePainter(color:color, radius:radius);
  }
}

class _CirclePainter extends BoxPainter{
  late Color color;
  final double radius;
  _CirclePainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration config) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(config.size!.width/2,config.size!.height - radius,);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}

OutlineInputBorder myInputBorder(){ //return type is OutlineInputBorder
  return OutlineInputBorder( //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(
        color: primaryMedium,
        width: 1.5,
      )
  );
}

OutlineInputBorder myFocusBorder(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(
        color: primaryDark,
        width: 1.5,
      )
  );
}