import 'package:flutter/material.dart';

class Product {
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.title,
    @required this.description,
    @required this.images,
    @required this.colors,
    this.rating = 0.0,
    @required this.price,
    this.isFavourite = false,
    this.isPopular = false,
  });
}

List<Product> productList = [
  Product(
    title: "Product Title one two two three",
    description:
        "From 2016, I am Developing Mobile user interface for business app, sport/gym related, education, entertainment, food and drink, product marketing/e-commerce so many. I am skill in Native apps(Android) and Hybrid apps(flutter). All buyer had in local market. Now I am working digital market place. It is try to contribute my knowledge in digital market place.",
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xfff6625E),
      Color(0xff836DB8),
      Color(0xfff6625E),
      Colors.white,
    ],
    price: 50.55,
    rating: 4.4,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    title: "Product Title two two three",
    description:
        "From 2016, I am Developing Mobile user interface for business app, sport/gym related, education, entertainment, food and drink, product marketing/e-commerce so many.",
    images: ["assets/images/ps4_console_white_2.png"],
    colors: [
      Color(0xfff6625E),
      Color(0xff836DB8),
      Color(0xfff6625E),
      Colors.white,
    ],
    price: 60.60,
    rating: 4.6,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    title: "Product Title two",
    description: "BBB",
    images: ["assets/images/ps4_console_white_3.png"],
    colors: [
      Color(0xfff6625E),
      Color(0xff836DB8),
      Color(0xfff6625E),
      Colors.white,
    ],
    price: 60.60,
    rating: 4.8,
    isFavourite: false,
    isPopular: true,
  ),
  Product(
    title: "Product Title one",
    description: "AAA",
    images: [
      "assets/images/ps4_console_white_4.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xfff6625E),
      Color(0xff836DB8),
      Color(0xfff6625E),
      Colors.white,
    ],
    price: 50.55,
    rating: 4.5,
    isFavourite: true,
    isPopular: true,
  ),
];
