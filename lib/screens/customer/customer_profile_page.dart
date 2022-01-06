import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/screens/customer/customer_about_us.dart';
import 'package:plant_buy/screens/customer/customer_contact.dart';
import 'package:plant_buy/screens/customer/customer_feedback.dart';
import 'package:plant_buy/screens/customer/customer_profile_details.dart';

class CustomerProfilePage extends StatelessWidget {
  const CustomerProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Text(
              "Profile",
              style:
              GoogleFonts.nunito(fontSize: 35, fontWeight: FontWeight.bold,letterSpacing: 2),
            ),
            SizedBox(height: 35,),
            Row(
              children: [
                Icon(MdiIcons.account,color: LogoColor,),
                SizedBox(width: 8,),
                Text(
                  "Account",
                  style: GoogleFonts.nunito(
                      fontSize: 25, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(height: 10,),
            GestureDetector(
                onTap: (){
                  Get.to(ProfileDetails());
                },
                child: buildAccountOptionRow(context,"Personal Detail")),
            GestureDetector(
                onTap: (){
                  Get.defaultDialog();
                },
                child: buildAccountOptionRow(context,"Change Password")),
            buildAccountOptionRow(context,"Previous Order"),
            GestureDetector(
                onTap: (){
                  Get.to(ContactAdmin());
                },
                child: buildAccountOptionRow(context,"Contact Us")),
            buildAccountOptionRow(context,"Manage Address"),
            GestureDetector(
                onTap: (){
                  Get.to(()=>FeedbackPage());
                },
                child: buildAccountOptionRow(context,"FeedBack(Review, Bug, Idea)")),
            GestureDetector(
                onTap: (){
                  Get.to(AboutUs());
                },
                child: buildAccountOptionRow(context,"About Halal")),
          ],
        ),
      ),

    );
  }

  Padding buildAccountOptionRow(BuildContext context, String title){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.nunito(
                fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey),
          ),
          Icon(Icons.arrow_forward_ios,color: Colors.grey,)
        ],
      ),
    );
  }

}
