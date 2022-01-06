import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plant_buy/constants/constant.dart';
import 'package:plant_buy/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: primaryDark,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Colors.transparent
          ),
          textTheme: GoogleFonts.rajdhaniTextTheme(Theme.of(context).textTheme),
        ),
        smartManagement: SmartManagement.keepFactory,
        home: SplashScreen(),
    );
  }
}
