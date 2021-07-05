import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_ui2/constants.dart';
import 'package:z_ui2/screens/home/PModels/Product.dart';
import 'package:z_ui2/size_config.dart';
import 'home_appbar.dart';
import 'home_component.dart';

class HomePage extends StatefulWidget {
  static final String id = "Home_Page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeAppBar(),
              SizedBox(height: getProportionateScreenWidth(30.0)),
              BannerForCashback(),
              SizedBox(height: getProportionateScreenWidth(30.0)),
              TopCategories(),
              SizedBox(height: getProportionateScreenWidth(30.0)),
              SpecialOffersCard(),
              SizedBox(height: getProportionateScreenWidth(30.0)),
              BastSellingProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
