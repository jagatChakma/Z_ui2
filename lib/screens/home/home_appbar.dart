import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../size_config.dart';

class AppBarSearchField extends StatelessWidget {
  const AppBarSearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextField(
        onChanged: (value) {
          //
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          hintText: "Search Product",
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20.0),
            vertical: getProportionateScreenWidth(10.0),
          ),
        ),
      ),
    );
  }
}

class AppBarIconBTN extends StatelessWidget {
  final String svgSrc;
  final int numberOfItems;
  final GestureTapCallback pressON;
  const AppBarIconBTN({
    Key key,
    @required this.svgSrc,
    this.numberOfItems = 0,
    @required this.pressON,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressON,
      borderRadius: BorderRadius.circular(50.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(10.0)),
            height: getProportionateScreenHeight(50.0),
            width: getProportionateScreenWidth(50.0),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numberOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProportionateScreenWidth(16.0),
                width: getProportionateScreenWidth(16.0),
                decoration: BoxDecoration(
                  color: Color(0xffff4848),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    "$numberOfItems",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(10.0),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
