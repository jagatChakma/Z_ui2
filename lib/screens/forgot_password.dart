import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:z_ui2/screens/sign_in_screen.dart';

import '../constants.dart';
import '../size_config.dart';

class ForgotPassword extends StatefulWidget {
  static String id = "forgot_password";
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
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
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                "Forgot Password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will \nsend you a link to recover your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: SvgPicture.asset(
                      "assets/icons/Mail.svg",
                      height: 20.0,
                    ),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 42.0, vertical: 20.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10,
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.2,
              ),
              SizedBox(
                width: double.infinity,
                height: getProportionateScreenHeight(56.0),
                // ignore: deprecated_member_use
                child: FlatButton(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: kPrimaryColors,
                  onPressed: () {
                    Navigator.pushNamed(context, ForgotPassword.id);
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account ?",
                    style:
                        TextStyle(fontSize: getProportionateScreenWidth(16.0)),
                  ),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: getProportionateScreenWidth(16.0),
                        color: kPrimaryColors),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
