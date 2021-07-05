import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:z_ui2/constants.dart';
import 'package:z_ui2/screens/home/PModels/Product.dart';
import 'package:z_ui2/screens/home/home_screen.dart';
import 'package:z_ui2/screens/product_details/top_site_rounded_con.dart';
import 'package:z_ui2/size_config.dart';

import 'prodect_details_component.dart';

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}

class ProductDetails extends StatefulWidget {
  static final String id = "product_details";

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F9),
      appBar: CustomAppBar(rating: arguments.product.rating),
      body: Body(product: arguments.product),
    );
  }
}

class Body extends StatelessWidget {
  final Product product;

  Body({this.product});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopSiteRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product),
                TopSiteRoundedContainer(
                  color: Color(0xfff6f7f9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopSiteRoundedContainer(
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.screenWidth * 0.15,
                            right: SizeConfig.screenWidth * 0.15,
                            top: getProportionateScreenWidth(20.0),
                            bottom: getProportionateScreenWidth(20.0),
                          ),
                          child: SizedBox(
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
                                "Add to Cart",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
