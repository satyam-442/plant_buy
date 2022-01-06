import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_buy/constants/constant.dart';

class SearchCategoryCard extends StatelessWidget {
  double width = Get.width;
  double height = Get.height;

  String? catName;
  String? catImage;
  final VoidCallback? onTap;
  IconData? preffix;
  SearchCategoryCard({
    this.catName,
    this.catImage,
    this.onTap,
    this.preffix
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
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5.0),
            child: Column(
              children: [
                PhysicalModel(
                  borderRadius: BorderRadius.circular(8),
                  color: CupertinoColors.white,
                  elevation: 4,
                  child: Column(
                    children: [
                      Container(
                        height: width * .15,
                        width: width * .15,
                        decoration: BoxDecoration(
                          color: LogoColor,
                            borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(preffix,color: CupertinoColors.white,)
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Text(catName!,style: GoogleFonts.rajdhani(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: CupertinoColors.black,
                    letterSpacing: 1
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
