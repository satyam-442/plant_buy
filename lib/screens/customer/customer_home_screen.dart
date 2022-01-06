import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/customer/customer_product_page.dart';
import 'package:plant_buy/widgets/category_card.dart';
import 'package:plant_buy/widgets/store_card.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _current = 0;
  double winHeight = 0;
  double winWidth = 0;

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    winHeight = Get.height;
    winWidth = Get.width;
    return SafeArea(
        child: Scaffold(
            body: Container(
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: winWidth,
            height: winHeight * .08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    "assets/images/green-leaf-logo.png",
                    height: winHeight * .05,
                    width: winHeight * .05,
                  ),
                ),
                Text(
                  "Dr. PLANTAE",
                  style: GoogleFonts.nunito(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(
                    MdiIcons.bellOutline,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
            children: [
              Text(
                "Explore\nby Categories",
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CategoryCard(catImage: "assets/images/herbs.jpg",catName: "Herbs",onTap: (){Get.to(()=>ProductPage());},),
                            CategoryCard(catImage: "assets/images/shrubs.jpg",catName: "Shrubs",onTap: (){print("Shrubs");},),
                            CategoryCard(catImage: "assets/images/trees.jpg",catName: "Trees",onTap: (){print("Trees");},),
                            CategoryCard(catImage: "assets/images/creepers.jpg",catName: "Creepers",onTap: (){print("Creepers");},),
                            CategoryCard(catImage: "assets/images/spring_bulb.jpg",catName: "Bulbs",onTap: (){print("Bulbs");},),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Text(
                "Flow\nwith Trend",
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CategoryCard(catImage: "assets/images/trend/bonsai.jpg",catName: "Bonsai",onTap: (){print("Bonsai");},),
                            CategoryCard(catImage: "assets/images/trend/cactus.jpg",catName: "Cactus",onTap: (){print("Cactus");},),
                            CategoryCard(catImage: "assets/images/trend/ferns.jpg",catName: "Ferns",onTap: (){print("Ferns");},),
                            CategoryCard(catImage: "assets/images/trend/orchids.jpg",catName: "Orchids",onTap: (){print("Orchids");},),
                            CategoryCard(catImage: "assets/images/trend/palm_tree.jpg",catName: "Palm Tree",onTap: (){print("Palm Tree");},),
                            CategoryCard(catImage: "assets/images/trend/snake_tree.jpg",catName: "Snake Tree",onTap: (){print("Snake Tree");},),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Text(
                "Explore\nby Garden Center",
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StoreCard(catName: "Store One",catImage: "assets/images/creepers.jpg",onFuncNavigate: (){print("Store One Clicked");},),
                    StoreCard(catName: "Store Two",catImage: "assets/images/creepers.jpg",onFuncNavigate: (){print("Store Two Clicked");},),
                    StoreCard(catName: "Store Three",catImage: "assets/images/creepers.jpg",onFuncNavigate: (){print("Store Three Clicked");},),
                    StoreCard(catName: "Store Four",catImage: "assets/images/creepers.jpg",onFuncNavigate: (){print("Store Four Clicked");},),
                    StoreCard(catName: "Store Five",catImage: "assets/images/creepers.jpg",onFuncNavigate: (){print("Store Five Clicked");},),
                    StoreCard(catName: "Store Six",catImage: "assets/images/creepers.jpg",onFuncNavigate: (){print("Store Six Clicked");},),
                    StoreCard(catName: "Store Seven",catImage: "assets/images/creepers.jpg",onFuncNavigate: (){print("Store Seven Clicked");},),
                  ],
                ),
              ),
            ],
          ))
        ],
      ),
    )));
  }
}
