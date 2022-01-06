
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/widgets/product_card.dart';

enum Time { hour, day, week, month, year }

_timeToString(Time time){
  switch (time) {
    case Time.hour:
      return "1h";
    case Time.day:
      return "1d";
    case Time.week:
      return "1w";
    case Time.month:
      return "1m";
    case Time.year:
      return "1y";
    default:
      return "1h";
  }
}

enum ProductQty{twoFifty, fiveHundred, sevenFifty, oneKG, onePlus}

qtyToString(ProductQty productQty){
  switch(productQty){
    case ProductQty.twoFifty:
      return "250 gm";
    case ProductQty.fiveHundred:
      return "500 gm";
    case ProductQty.sevenFifty:
      return "750 gm";
    case ProductQty.oneKG:
      return "1 kg";
    case ProductQty.onePlus:
      return "1+";
  }
}

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {

    width = Get.width;
    height = Get.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: CupertinoColors.white,
        appBar: AppBar(
          backgroundColor: CupertinoColors.white,
          elevation: 1,
          leading: InkWell(
            onTap: (){
              Get.back();
            },
            child: Icon(MdiIcons.arrowLeftBold,size: 30,color: primaryDark,),
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              ProductCard(
                productName: "Chicken",
                productDesc: "Best Chicken you ever had in your life",
                productPrice: "150 ₹ / 250 gms",
                onTap: (){
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          )
                      ),
                      height: height*.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),
                  );
                },
              ),
              ProductCard(
                productName: "Meat",
                productDesc: "Best Meat you ever had in your life",
                productPrice: "180 ₹ / 250 gms",
                onTap: (){
                  print("Added to cart ${qtyToString(ProductQty.twoFifty)}");
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                          color: CupertinoColors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          )
                      ),
                      height: height*.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                        ],
                      ),
                    ),
                  );
                  },),
              ProductCard(productName: "Gym",productDesc: "Best Gym you ever had in your life",productPrice: "160 ₹ / 250 gms",onTap: (){print("Added to cart");},),
              ProductCard(productName: "Titar",productDesc: "Best Titar you ever had in your life",productPrice: "110 ₹ / 1 pcs.",onTap: (){print("Added to cart");},),
              ProductCard(productName: "Poultry",productDesc: "Best Poultry you ever had in your life",productPrice: "360 ₹ / 1 pcs",onTap: (){print("Added to cart");},),
            ],
          ),
        ),
      ),
    );
  }
}
