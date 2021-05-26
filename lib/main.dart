import 'package:flutter/material.dart';
import 'package:z_ui2/constants.dart';
import 'package:z_ui2/screens/splash_screen.dart';

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
        textTheme: TextTheme(
          bodyText2: TextStyle(color: kTextColor),
          bodyText1: TextStyle(color: kTextColor),
        ),
      ),
      // home: SplashScreen(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
      },
    );
  }
}
