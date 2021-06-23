import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:z_ui2/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:z_ui2/screens/forgot_password.dart';
import 'package:z_ui2/screens/home_page.dart';
import 'package:z_ui2/size_config.dart';

class SignInScreen extends StatelessWidget {
  static final String id = "sign_in_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Welcome Back",
              style: TextStyle(
                fontSize: 28.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Sing in with your email and password \n or social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getProportionateScreenHeight(50.0),
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
              height: getProportionateScreenHeight(20.0),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                  child: SvgPicture.asset(
                    "assets/icons/Lock.svg",
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
              height: getProportionateScreenHeight(40.0),
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
                  Navigator.pushNamed(context, HomePage.id);
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
              height: getProportionateScreenHeight(40.0),
            ),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: kPrimaryColors,
                  onChanged: (value) {
                    setState(() {
                      remember = value;
                    });
                  },
                ),
                Text("Remember me"),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, ForgotPassword.id);
                  },
                  child: Text(
                    "Forgot Password",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(40.0),
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
              height: getProportionateScreenHeight(40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account ?",
                  style: TextStyle(fontSize: getProportionateScreenWidth(16.0)),
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
    );
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({Key key, this.icon, this.pressed}) : super(key: key);

  final String icon;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
        height: getProportionateScreenHeight(50.0),
        width: getProportionateScreenWidth(50.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
