import 'package:bta3_tanmya/Componnent/components/size_config.dart';
import 'package:bta3_tanmya/Screens/onBoarding/components/body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  static String routeName = "/onBoarding";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
