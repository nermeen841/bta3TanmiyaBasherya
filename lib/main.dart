import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Componnent/components/theme.dart';
import 'Screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: HexColor("#2972B7"),
      statusBarBrightness: Brightness.light,
    ));

    return MaterialApp(
      theme: theme(),
      home: Directionality(
          textDirection: TextDirection.rtl, child: SplashScreen()),
    );
  }
}
