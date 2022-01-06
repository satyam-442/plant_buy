import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';

enum feedbackGroup{Review,Bugs,BusinessQuery}

class FeedbackPage extends StatefulWidget {

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  double width = 0;
  double height = 0;
  feedbackGroup _value = feedbackGroup.Review;
  String? valueName = "Review";

  @override
  Widget build(BuildContext context) {

    width = Get.width;
    height = Get.height;

    return SafeArea(
      child: Scaffold(
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(MdiIcons.arrowLeftBold,size: 35,color: primaryDark,),
                    ),
                    SizedBox(height: height*0.03,),
                    Text("Give Feedback",style: GoogleFonts.nunito(
                      color: primaryDark,
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: height*0.05,),
                    Text("Name",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    Text("Satyam Tiwari",style: TextStyle(
                        color: primaryDark,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                    Divider(
                      color: LogoColor,
                    ),
                    SizedBox(height: height*0.02,),
                    Text("Phone",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    Text("+91-9049927365",style: TextStyle(
                        color: primaryDark,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                    Divider(
                      color: LogoColor,
                    ),
                    SizedBox(height: height*0.02,),
                    Text("E-mail",style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),),
                    Text("satyamtiwari442@gmail.com",style: TextStyle(
                        color: primaryDark,
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),),
                    Divider(
                      color: LogoColor,
                    ),
                    SizedBox(height: height*0.02,),
                    Text("Select type of feedback"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Radio(
                                activeColor: LogoColor,
                                splashRadius: 20,
                                value: feedbackGroup.Review,
                                groupValue: _value,
                                onChanged: (feedbackGroup? val){
                                  setState(() {
                                    _value = val!;
                                    valueName = "Review";
                                  });
                                }),
                            Text("Review")
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: LogoColor,
                                splashRadius: 20,
                                value: feedbackGroup.Bugs,
                                groupValue: _value,
                                onChanged: (feedbackGroup? val){
                                  setState(() {
                                    _value = val!;
                                    valueName = "Bugs";
                                  });
                                }),
                            Text("Bugs")
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                                activeColor: LogoColor,
                                splashRadius: 20,
                                value: feedbackGroup.BusinessQuery,
                                groupValue: _value,
                                onChanged: (feedbackGroup? val){
                                  setState(() {
                                    _value = val!;
                                    valueName = "Business Query";
                                  });
                                }),
                            Text("Business Query")
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20,),
                      width: width,
                      height: width*.13,
                      decoration: BoxDecoration(
                        color: primaryLight,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [BoxShadow(color: LogoColor, blurRadius: 1.0, spreadRadius: 1)],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              fillColor: primaryDark,
                              border: InputBorder.none,
                              labelText: "Type your ${valueName} here",
                              labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: LogoColor
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              alignLabelWithHint: true,
                              contentPadding: EdgeInsets.symmetric(horizontal: 15),
                            ),
                            cursorColor: LogoColor,
                            style: TextStyle(
                                fontSize: 22
                            ),
                            onTap: (){
                              //showSearch(context: context, delegate: ListOfData());
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Send Feedback Btn");
        },
        backgroundColor: primaryDark,
        child: Icon(MdiIcons.send),
        tooltip: "Send",
        elevation: 2,
      ),),
    );
  }
}
