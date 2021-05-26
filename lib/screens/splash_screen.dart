import 'package:flutter/material.dart';
import 'package:z_ui2/constants.dart';
import 'package:z_ui2/size_config.dart';

class SplashScreen extends StatefulWidget {
  static final String id = "splash_screen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        "level": " Welcome to Toyota, Let's shop",
        "image": "assets/images/splash_1.png"
      },
      {
        "level":
            " We help people conect with store\n around Unitex State of America",
        "image": "assets/images/splash_2.png"
      },
      {
        "level": " We show the easy way to shop. \nJust stay at home with us",
        "image": "assets/images/splash_3.png"
      },
    ];
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  lever: splashData[index]["level"],
                  image: splashData[index]["image"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20.0),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionateScreenHeight(56.0),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: kPrimaryColors,
                        onPressed: () {
                          //
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
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildDot({int index}) {
    return Container(
      margin: EdgeInsets.only(right: 2.0),
      height: 6.0,
      width: currentPage == index ? 20.0 : 6.0,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColors : Color(0xffd8d8d8),
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  final String lever, image;

  SplashContent({this.lever, this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOYOTA",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColors,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          lever,
          textAlign: TextAlign.center,
          // style: TextStyle(color: kPrimaryColors),
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
