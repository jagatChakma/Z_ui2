import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_ui2/constants.dart';
import 'package:z_ui2/screens/sign_in_screen.dart';
import 'package:z_ui2/size_config.dart';

class SignUp extends StatefulWidget {
  static final String id = "Sign_Up";

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "Register Account",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Complete your details \n or  continue with social media",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.0, letterSpacing: 1.0),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "yourmail@mail.com",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 42,
                    vertical: 20.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: SvgPicture.asset(
                      "assets/icons/Mail.svg",
                      height: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "********",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: SvgPicture.asset(
                      "assets/icons/Lock.svg",
                      height: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "********",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: SvgPicture.asset(
                      "assets/icons/Lock.svg",
                      height: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              SizedBox(
                width: double.infinity,
                height: getProportionateScreenHeight(56.0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  color: kPrimaryColors,
                  // padding: EdgeInsets.symmetric(horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    pressed: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    pressed: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    pressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                "You have to agree with out Term and Condition",
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
