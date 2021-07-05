import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:z_ui2/screens/product_details/product_details_screen.dart';

import '../../constants.dart';
import '../../size_config.dart';
import 'PModels/Product.dart';
import 'home_appbar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarSearchField(),
        AppBarIconBTN(
          svgSrc: "assets/icons/Cart Icon.svg",
          pressON: () {},
        ),
        AppBarIconBTN(
          svgSrc: "assets/icons/Bell.svg",
          numberOfItems: 5,
          pressON: () {},
        ),
      ],
    );
  }
}

class BannerForCashback extends StatelessWidget {
  const BannerForCashback({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20.0),
        vertical: getProportionateScreenWidth(15.0),
      ),
      width: double.infinity,
      // height: 90.0,
      decoration: BoxDecoration(
        color: Color(0xff4a3298),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text.rich(
        TextSpan(
          text: "A Summer Surprice \n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "Cashback 50%",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class TopCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "bill"},
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "bill"},
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "bill"},
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                press: () {}),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: SizedBox(
          width: getProportionateScreenWidth(55),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(12.0)),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: SvgPicture.asset(
                    icon,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                text,
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(18.0),
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text("See More"),
        )
      ],
    );
  }
}

class SpecialOffersCard extends StatelessWidget {
  const SpecialOffersCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Special offer",
          press: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              OfferCard(
                categoryName: "Smart gajet",
                image: "assets/images/Image Banner 2.png",
                numOfBrands: 10,
                onPress: () {},
              ),
              OfferCard(
                categoryName: "Style gajet",
                image: "assets/images/Image Banner 3.png",
                numOfBrands: 10,
                onPress: () {},
              ),
              OfferCard(
                categoryName: "Smart gajet",
                image: "assets/images/Image Banner 3.png",
                numOfBrands: 10,
                onPress: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key key,
    @required this.categoryName,
    @required this.image,
    @required this.numOfBrands,
    @required this.onPress,
  }) : super(key: key);

  final String categoryName, image;
  final int numOfBrands;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: onPress,
        child: SizedBox(
          width: getProportionateScreenWidth(240.0),
          height: getProportionateScreenWidth(100.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Stack(
              children: [
                Image.asset(
                  "$image",
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff343434).withOpacity(0.4),
                        Color(0xff343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15.0),
                      vertical: getProportionateScreenWidth(10.0),
                    ),
                    child: Text.rich(
                      TextSpan(
                        style: TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                            text: "$categoryName \n",
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(18.0),
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "$numOfBrands brands")
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BastSellingProduct extends StatelessWidget {
  const BastSellingProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Bast selling Product",
          press: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                productList.length,
                (index) => ProductCard(
                  product: productList[index],
                  onPress: () {
                    Navigator.pushNamed(
                      context,
                      ProductDetails.id,
                      arguments:
                          ProductDetailsArguments(product: productList[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140.0,
    this.aspectRetio = 1.02,
    @required this.product,
    @required this.onPress,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: onPress,
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRetio,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(20.0)),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                productList[0].title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${product.price}",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18.0),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColors,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(50.0),
                    child: Container(
                      padding: EdgeInsets.all(getProportionateScreenWidth(6.0)),
                      width: getProportionateScreenWidth(28.0),
                      height: getProportionateScreenWidth(28.0),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColors.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Heart Icon_2.svg",
                        color: product.isFavourite ? kPrimaryColors : null,
                      ),
                    ),
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
