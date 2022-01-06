import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/widgets/cart_card.dart';
import 'package:plant_buy/widgets/custom_btn.dart';

class CustomerCartPage extends StatelessWidget {

  double width = Get.width;
  double height = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text("My Bag",style: GoogleFonts.nunito(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ),
              Expanded(
                flex: 12,
                child: ListView(
                  children: [
                    CartCard(cartImg: "assets/images/trend/orchids.jpg",cartProdName: "Boneless Chicken",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "350/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                    CartCard(cartImg: "assets/images/trend/orchids.jpg",cartProdName: "Boneless Chicken",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "350/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                    CartCard(cartImg: "assets/images/trend/ferns.jpg",cartProdName: "Chicken",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "300/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                    CartCard(cartImg: "assets/images/trend/ferns.jpg",cartProdName: "Chicken",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "300/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                    CartCard(cartImg: "assets/images/trend/bonsai.jpg",cartProdName: "Bonewala Chicken",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "150/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                    CartCard(cartImg: "assets/images/trend/bonsai.jpg",cartProdName: "Bonewala Chicken",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "150/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                    CartCard(cartImg: "assets/images/trend/snake_tree.jpg",cartProdName: "Chiken Ki Maa",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "390/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                    CartCard(cartImg: "assets/images/trend/cactus.jpg",cartProdName: "Chiken Ka Baap",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "550/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                    CartCard(cartImg: "assets/images/trend/cactus.jpg",cartProdName: "Chiken Ka Baap",cartProdDesc: "Best product you hav ever had n your help. Try it out for sure will you like it",cartProdPrice: "550/-",cartProdQty: "1 kg",cartProdCat: "Chicken",),
                  ],
                ),
              ),
              Expanded(flex:1,child: Container())
            ],
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: CustomBtnFill(text: "Continue"))
        ],
      ),
    );
  }
}
