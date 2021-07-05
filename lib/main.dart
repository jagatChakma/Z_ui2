import 'package:flutter/material.dart';
import 'package:z_ui2/constants.dart';
import 'package:z_ui2/screens/complete_profile.dart';
import 'package:z_ui2/screens/forgot_password.dart';
import 'package:z_ui2/screens/home/home_screen.dart';
import 'package:z_ui2/screens/product_details/product_details_screen.dart';
import 'package:z_ui2/screens/otp_screen.dart';
import 'package:z_ui2/screens/sign_in_screen.dart';
import 'package:z_ui2/screens/sign_up.dart';
import 'package:z_ui2/screens/splash_screen.dart';
import 'package:z_ui2/screens/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kTextColor),
          bodyText1: TextStyle(color: kTextColor),
        ),
      ),
      // home: SplashScreen(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        ForgotPassword.id: (context) => ForgotPassword(),
        HomePage.id: (context) => HomePage(),
        SignUp.id: (context) => SignUp(),
        Complete_Profile.id: (context) => Complete_Profile(),
        OtpScreen.id: (context) => OtpScreen(),
        ProductDetails.id: (context) => ProductDetails(),
      },
    );
  }
}
