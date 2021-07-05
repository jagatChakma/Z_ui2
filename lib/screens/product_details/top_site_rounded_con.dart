import 'package:flutter/material.dart';

import '../../size_config.dart';

class TopSiteRoundedContainer extends StatelessWidget {
  const TopSiteRoundedContainer({
    Key key,
    this.color,
    this.child,
  }) : super(key: key);

  final Color color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: getProportionateScreenWidth(20.0)),
      margin: EdgeInsets.only(top: getProportionateScreenWidth(20.0)),
      width: double.infinity,
      // height: 300.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: child,
    );
  }
}
