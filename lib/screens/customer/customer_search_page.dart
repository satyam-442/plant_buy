import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/customer/customer_product_page.dart';
import 'package:plant_buy/widgets/recent_category_card.dart';
import 'package:plant_buy/widgets/search_category_card.dart';

enum searchGroup { Shops, Products }

class CustomerSearchPage extends StatefulWidget {
  const CustomerSearchPage({Key? key}) : super(key: key);

  @override
  State<CustomerSearchPage> createState() => _CustomerSearchPageState();
}

class _CustomerSearchPageState extends State<CustomerSearchPage> {
  double winHeight = 0;
  double winWidth = 0;
  searchGroup _value = searchGroup.Products;
  String? valueName = "Products";

  @override
  Widget build(BuildContext context) {
    winHeight = Get.height;
    winWidth = Get.width;

    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              width: winWidth,
              child: Text(
                'Search to prepare something,\nBenignant',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                    fontSize: 25.0, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Radio(
                        activeColor: LogoColor,
                        splashRadius: 20,
                        value: searchGroup.Products,
                        groupValue: _value,
                        onChanged: (searchGroup? val) {
                          setState(() {
                            _value = val!;
                            valueName = "Products";
                          });
                        }),
                    Text("Search by Products")
                  ],
                ),
                Row(
                  children: [
                    Radio(
                        activeColor: LogoColor,
                        splashRadius: 20,
                        value: searchGroup.Shops,
                        groupValue: _value,
                        onChanged: (searchGroup? val) {
                          setState(() {
                            _value = val!;
                            valueName = "Shops";
                          });
                        }),
                    Text("Search by Shops")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              width: winWidth,
              height: winWidth * .13,
              decoration: BoxDecoration(
                color: primaryLight,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(color: LogoColor, blurRadius: 1.0, spreadRadius: 1)
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: primaryDark,
                      border: InputBorder.none,
                      hintText: valueName,
                      hintStyle: TextStyle(fontSize: 22),
                      labelText: "Search for",
                      labelStyle: TextStyle(fontSize: 20, color: LogoColor),
                      suffixIcon: InkWell(
                        onTap: () {
                          print("Search Btn Clicked");
                        },
                        child: Icon(
                          MdiIcons.textSearch,
                          color: LogoColor,
                        ),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      alignLabelWithHint: true,
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    cursorColor: LogoColor,
                    style: TextStyle(fontSize: 22),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Recent orders",
                    style: GoogleFonts.rajdhani(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RecentOrderSearchCard(onTap: (){},catName: "Bonsai",catImage: "assets/images/trend/bonsai.jpg",catDesc: "Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai Bonsai ",catPrice: "150/-",catQty: "250 gms",),
                        RecentOrderSearchCard(onTap: (){},catName: "Snake Tree",catImage: "assets/images/trend/snake_tree.jpg",catDesc: "Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree Snake Tree ",catPrice: "250/-",catQty: "500 gms",),
                        RecentOrderSearchCard(onTap: (){},catName: "Orchids",catImage: "assets/images/trend/orchids.jpg",catDesc: "Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids Orchids ",catPrice: "250/-",catQty: "500 gms",),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: FractionalOffset.bottomCenter,
              margin: EdgeInsets.only(left: 20, top: 10, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Search by Categories",
                    style: GoogleFonts.rajdhani(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SearchCategoryCard(onTap: (){},catName: "Chicken",preffix: MdiIcons.foodDrumstickOutline,),
                      SearchCategoryCard(onTap: (){},catName: "Meat",preffix: MdiIcons.foodSteak,),
                      SearchCategoryCard(onTap: (){},catName: "Gym",preffix: MdiIcons.foodSteak,),
                      SearchCategoryCard(onTap: (){},catName: "Teetar",preffix: MdiIcons.bird,),
                      SearchCategoryCard(onTap: (){},catName: "Poultry",preffix: MdiIcons.barn,)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
