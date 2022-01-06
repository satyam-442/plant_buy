import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/controller/customer_controller.dart';
import 'package:plant_buy/screens/customer/customer_dashboard.dart';
import 'package:plant_buy/widgets/text_wgt.dart';

enum PageState{init, process, done}

class CustomerSignup extends GetView<CustomerController> {
  final formKey = GlobalKey<FormState>();
  final FirebaseAuth auth = FirebaseAuth.instance;

  double height = Get.height;
  double width = Get.width;

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    RxBool isLoading = RxBool(false);
    RxBool visible = RxBool(true);
    bool isStretched = false;

    return Scaffold(
      key: _scaffoldKey,
      body: ListView(
        children: [
          Form(
            key: formKey,
            child: Container(
              width: width,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    customer_signup_quote,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: primaryDark),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Create an Account!",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: primaryDark),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: width * .13,
                        width: width * .13,
                        decoration: BoxDecoration(
                            color: inputPrimaryLight,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          MdiIcons.accountOutline,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      CustomTextField(
                          hintText: "Full Name",
                          controller: nameCtrl,
                          validator:
                              RequiredValidator(errorText: "Required *")),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: width * .13,
                        width: width * .13,
                        decoration: BoxDecoration(
                            color: inputPrimaryLight,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          MdiIcons.phone,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      CustomTextField(
                        hintText: "Phone no.",
                        controller: phoneCtrl,
                        textInputType: TextInputType.phone,
                        maxLength: 10,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required *"),
                          MinLengthValidator(10, errorText: "Invalid phone"),
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: width * .13,
                        width: width * .13,
                        decoration: BoxDecoration(
                            color: inputPrimaryLight,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          MdiIcons.at,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: width * .05,
                      ),
                      CustomTextField(
                        hintText: "E-mail",
                        controller: emailCtrl,
                        textInputType: TextInputType.emailAddress,
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required *"),
                          EmailValidator(errorText: "Invalid E-mail")
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: width * .13,
                            width: width * .13,
                            decoration: BoxDecoration(
                                color: inputPrimaryLight,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              MdiIcons.lockOutline,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: width * .05,
                          ),
                          CustomTextField(
                            hintText: "Password",
                            controller: passwordCtrl,
                            textInputType: TextInputType.visiblePassword,
                            suffix: true,
                            suffixCallBack: () {
                              visible.value = !visible.value;
                            },
                            obsecure: visible.value,
                            validator: MultiValidator([
                              RequiredValidator(errorText: "Required *"),
                              MinLengthValidator(8,
                                  errorText: "Must be of 8 digit"),
                              MaxLengthValidator(15,
                                  errorText: "Password too long"),
                            ]),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 35,
                  ),
                  InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        SignUpUser();
                        /*Get.to(() => CustomerDashboard());*/
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      height: height * 0.065,
                      width: width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            primaryMedium,
                            primaryDark,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: buildSignUpBtn(),
                    ),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: "By signing up, you agree to our\n",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        TextSpan(
                            text: "Terms",
                            style: TextStyle(
                                color: primaryDark,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline)),
                        TextSpan(
                            text: " and ",
                            style:
                                TextStyle(color: Colors.black, fontSize: 16)),
                        TextSpan(
                            text: "Conditions of use",
                            style: TextStyle(
                                color: primaryDark,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline)),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Center buildSignUpBtn() {
    return Center(
      child: Text(
        "SIGN UP",
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }

  Center buildSignUpProgress() {
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: SpinKitThreeBounce(
          color: primaryLight,
          size: 20,
        ),
      ),
    );
  }

  Future<void> SignUpUser() async {
    try {
      final User user = (await auth.createUserWithEmailAndPassword(
              email: emailCtrl.text, password: passwordCtrl.text))
          .user!;
      Get.offAll(() => CustomerDashboard());
    } on FirebaseException catch (e) {
      /*switch(e.code){
          case "ERROR_USER_NOT_FOUND":
            ScaffoldMessenger.of(context).showSnackBar(mySnackBar("Error: ${e.message}"));
        }*/
      showSnackBar("Error", "${e.message}");
      //DIALOG CODE BELOW
      /*Get.defaultDialog(
          title: "Error",
          middleText: "${e.message}",
          textCancel: "Retry",
          textConfirm: "OK",
          onConfirm: (){
            print("Confirm Pressed");
          }
        );*/
    } catch (e) {
      mySnackBar("Error:${e}");
    }
  }
}
