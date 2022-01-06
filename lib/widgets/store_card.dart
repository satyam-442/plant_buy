import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_buy/constants/constant.dart';

class StoreCard extends StatelessWidget {

  double width = Get.width;
  double height = Get.height;

  String? catName;
  String? catImage;
  Function? onFuncNavigateOne;
  final VoidCallback? onFuncNavigate;
  StoreCard({
  this.catName,
  this.catImage,
  this.onFuncNavigate
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10.0),
          child: PhysicalModel(
            borderRadius: BorderRadius.circular(5),
            color: CupertinoColors.white,
            elevation: 4,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    onFuncNavigate;
                  },
                  child: Container(
                    height: width * .25,
                    width: width*.3,
                    decoration: BoxDecoration(
                      color: CupertinoColors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                      ),
                    ),
                    child: Opacity(
                      opacity: 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        child: Image(
                          fit: BoxFit.fill,
                          width: width*.2,
                          height: width*.2,
                          image: AssetImage(catImage!),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0,top: 8.0),
                  child: Text(catName!,textAlign: TextAlign.left,style: GoogleFonts.nunito(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1
                  ),),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
