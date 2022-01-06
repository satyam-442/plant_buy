import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_buy/constants/constant.dart';

class CategoryCard extends StatelessWidget {
  double width = Get.width;
  double height = Get.height;

  String? catName;
  String? catImage;
  final VoidCallback? onTap;
  CategoryCard({
    this.catName,
    this.catImage,
    this.onTap,
});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        this.onTap!();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10.0),
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(15),
              color: CupertinoColors.white,
              elevation: 4,
              child: Stack(
                children: [
                  Container(
                    height: width * .5,
                    width: width * .35,
                    decoration: BoxDecoration(
                      color: CupertinoColors.black,
                        borderRadius: BorderRadius.circular(15),
                    ),
                    child: Opacity(
                      opacity: 0.5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          fit: BoxFit.fill,
                          image: AssetImage(catImage!),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 8,
                    child: Text(catName!,style: GoogleFonts.nunito(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: primaryLight,
                        letterSpacing: 1
                    ),),
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
