import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/model/customer_model.dart';

class CustomerController extends GetxController{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  CustomerModel customerModel = CustomerModel.nullValues();

  TextEditingController fullanme = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  //REGISTER WITH EMAIL & PASSWORD
  Future registerWithEmailAndPassword() async {
    if(customerModel.fullName.isEmpty){
      showSnackBar("Error", "Name field is empty!");
    }
    try {
      //await _auth.createUserWithEmailAndPassword(email: customerModel.email, password: customerModel.password);
    } catch (e) {}
  }

}