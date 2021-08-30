import 'package:bta3_tanmya/Componnent/components/default_button.dart';
import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Componnent/components/size_config.dart';
import 'package:bta3_tanmya/Screens/Home/homeScreen.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;

  const SplashContent({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      children: <Widget>[
        Image.asset(
          image,
          height: getProportionateScreenHeight(310),
          width: getProportionateScreenWidth(350),
          fit: BoxFit.cover,
        ),
        spaceH(20),
        Text(
          text,
          textAlign: TextAlign.center,
          style: headingStyle.copyWith(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        spaceH(20),
        DefaultButton(
          text: "ابدء رحلتك الان",
          press: () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen())),
        ),
      ],
    );
  }
}
