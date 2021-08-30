import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdsBannar extends StatelessWidget {
  List<Widget> images = [
    Image.asset(
      "assets/images/4.jpg",
      width: double.infinity,
      height: 150,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/4.jpg",
      width: double.infinity,
      height: 150,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/4.jpg",
      width: double.infinity,
      height: 150,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/images/4.jpg",
      width: double.infinity,
      height: 150,
      fit: BoxFit.cover,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images,
      options: CarouselOptions(
        height: 150,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
