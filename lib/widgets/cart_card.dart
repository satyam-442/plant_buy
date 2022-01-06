import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';

class CartCard extends StatelessWidget {

  double height = Get.height;
  double width = Get.width;

  String? cartImg;
  String? cartProdName;
  String? cartProdDesc;
  String? cartProdPrice;
  String? cartProdQty;
  String? cartProdCat;

  CartCard({
    this.cartImg,
    this.cartProdName,
    this.cartProdDesc,
    this.cartProdPrice,
    this.cartProdQty,
    this.cartProdCat,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 10.0),
            child: PhysicalModel(
              borderRadius: BorderRadius.circular(15),
              color: CupertinoColors.white,
              elevation: 4,
              child: Stack(
                children: [
                  Container(
                    height: width * .25,
                    width: width * .25,
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
                          image: AssetImage(cartImg!),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 8,
                    child: Text(cartProdCat!,style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: primaryLight,
                    ),),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 8,),
                child: Text(cartProdName!,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Text(cartProdDesc!,overflow: TextOverflow.visible,style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /*Text("Category: ${cartProdCat!}",style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),*/
                  Text("Price: ${cartProdPrice!}",style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                  ),),
                  Text("Qty: ${cartProdQty!}",style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Container(
              height: width*.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      print("Edit Orders");
                    },
                    child: Icon(Icons.edit_rounded),
                  ),
                  InkWell(
                    onTap: (){
                      print("Delete Orders");
                    },
                    child: Icon(MdiIcons.deleteOutline),
                  ),
                ],
              ),
            )
        )
      ],
    );
  }
}