import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_ui2/constants.dart';
import 'package:z_ui2/screens/otp_screen.dart';

import '../size_config.dart';

class Complete_Profile extends StatefulWidget {
  static final String id = "complete_profile";

  @override
  _Complete_ProfileState createState() => _Complete_ProfileState();
}

class _Complete_ProfileState extends State<Complete_Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Cpmplete Profile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Complete your details or \ncontinue with social media",
                style: TextStyle(letterSpacing: 1.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "First Name",
                  hintText: "Enter your First Name",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: SvgPicture.asset(
                      "assets/icons/User.svg",
                      height: 20.0,
                    ),
                  ),
                  //prefixIcon: Icon(Icons.add),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Last Name",
                  hintText: "Enter your Last Name",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: SvgPicture.asset(
                      "assets/icons/User.svg",
                      height: 20.0,
                    ),
                  ),
                  //prefixIcon: Icon(Icons.add),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Phone Number",
                  hintText: "Enter your phone number",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 25.0, 0.0),
                    child: SvgPicture.asset(
                      "assets/icons/Phone.svg",
                      height: 20.0,
                    ),
                  ),
                  //prefixIcon: Icon(Icons.add),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  labelText: "Address",
                  hintText: "Enter your address",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: kTextColor),
                      gapPadding: 10.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: kTextColor),
                    gapPadding: 10.0,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 20.0,
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                    child: SvgPicture.asset(
                      "assets/icons/Location point.svg",
                      height: 20.0,
                    ),
                  ),
                  //prefixIcon: Icon(Icons.add),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              SizedBox(
                // width: double.infinity,
                height: 60.0,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, OtpScreen.id);
                  },
                  color: kPrimaryColors,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
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
