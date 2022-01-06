import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_buy/constants/constant.dart';

class RecentOrderSearchCard extends StatelessWidget {
  double width = Get.width;
  double height = Get.height;

  String? catName;
  String? catImage;
  String? catDesc;
  String? catQty;
  String? catPrice;
  final VoidCallback? onTap;

  RecentOrderSearchCard({
    this.catName,
    this.catImage,
    this.catDesc,
    this.catQty,
    this.catPrice,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: PhysicalModel(
          elevation: 4,
          color: CupertinoColors.black,
          borderRadius: BorderRadius.circular(15),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
                width: width * .35,
                height: width * .55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: width * .35,
                      width: width * .35,
                      decoration: BoxDecoration(
                        color: CupertinoColors.black,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                        ),
                      ),
                      child: Opacity(
                        opacity: 0.5,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                          child: Image(
                            fit: BoxFit.cover,
                            image: AssetImage(catImage!),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 6.0, left: 5, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            catName!,
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: primaryDark,
                            ),
                          ),
                          Text(
                            catDesc!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFonts.nunito(
                              fontSize: 15,
                              color: primaryDark,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                catQty!,
                                style: GoogleFonts.nunito(
                                    fontSize: 15,
                                    color: CupertinoColors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                catPrice!,
                                style: GoogleFonts.nunito(
                                    fontSize: 15,
                                    color: CupertinoColors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                width: width * .35,
                height: width * .07,
                child: Center(
                    child: Text(
                  "Order Again",
                  style: GoogleFonts.nunito(
                      fontSize: 15, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
