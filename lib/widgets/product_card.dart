import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_buy/constants/constant.dart';

class ProductCard extends StatefulWidget {

  String? productName;
  String? productDesc;
  String? productPrice;

  final VoidCallback? onTap;

  ProductCard({
    this.productName,
    this.productDesc,
    this.productPrice,
    this.onTap,
});

  static double _lowerValue = 1;
  static double _higherValue = 10;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  double? width = Get.width;

  double? height = Get.height;

  RangeValues values = RangeValues(ProductCard._lowerValue, ProductCard._higherValue);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(left: 4,right: 4,top: 8),
      decoration: BoxDecoration(
        color: primaryLight,
        borderRadius: BorderRadius.circular(4)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8,),
                    Text(widget.productName!,style: TextStyle(
                      fontSize: 28,
                      color: LogoColor,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1
                    ),),
                    Text(widget.productDesc!,style: TextStyle(
                        fontSize: 20,
                    ),),
                    Text(widget.productPrice!,style: TextStyle(
                      fontSize: 20,
                    ),),
                    SizedBox(height: 8,),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 8,),
                    InkWell(
                      onTap: (){
                        this.widget.onTap!();
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: width! * .2,
                        height: width! * .08,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: primaryDark
                        ),
                        child: Text("Add",style: TextStyle(
                          color: CupertinoColors.white
                        ),),
                      ),
                    ),
                    SizedBox(height: 8,),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            height: 1,
            color: primaryDark,
          ),
        ],
      ),
    );
  }
}
