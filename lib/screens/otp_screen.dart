import 'package:flutter/material.dart';
import 'package:z_ui2/constants.dart';
import 'package:z_ui2/size_config.dart';

class OtpScreen extends StatefulWidget {
  static final String id = "otp_screen";

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  FocusNode otp2FocusNode;
  FocusNode otp3FocusNode;
  FocusNode otp4FocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    otp2FocusNode = FocusNode();
    otp3FocusNode = FocusNode();
    otp4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    otp2FocusNode.dispose();
    otp3FocusNode.dispose();
    otp4FocusNode.dispose();
    super.dispose();
  }

  void nextOTPField({String value, FocusNode focusNode}) {
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OTP Verification",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "OTP verification",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
              Text(
                "We sent your code to your phonenumber ",
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "This code will expired in ",
                    textAlign: TextAlign.center,
                  ),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 00.0),
                    duration: Duration(seconds: 30),
                    builder: (context, value, child) => Text(
                      "00:${value.toInt()}",
                      style: TextStyle(color: Colors.red),
                    ),
                    onEnd: () {
                      //
                    },
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 60.0,
                      child: TextFormField(
                        autofocus: true,
                        obscureText: true,
                        style: TextStyle(fontSize: 24.0),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextOTPField(value: value, focusNode: otp2FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                      child: TextFormField(
                        focusNode: otp2FocusNode,
                        obscureText: true,
                        style: TextStyle(fontSize: 24.0),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextOTPField(value: value, focusNode: otp3FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                      child: TextFormField(
                        focusNode: otp3FocusNode,
                        obscureText: true,
                        style: TextStyle(fontSize: 24.0),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          nextOTPField(value: value, focusNode: otp4FocusNode);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 60.0,
                      child: TextFormField(
                        focusNode: otp4FocusNode,
                        obscureText: true,
                        style: TextStyle(fontSize: 24.0),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: otpInputDecoration,
                        onChanged: (value) {
                          otp4FocusNode.unfocus();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              SizedBox(
                height: 60.0,
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {},
                  color: kPrimaryColors,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                ),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              GestureDetector(
                onTap: () {
                  //
                },
                child: Text(
                  "Resend OTP Code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
