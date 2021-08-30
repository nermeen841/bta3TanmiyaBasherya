import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';
import 'componnent/MenueItems.dart';
import 'componnent/body.dart';
import 'componnent/search_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor("#2972B7"),
          iconTheme: IconThemeData(color: Colors.white),
          title: SearchButton()),
      drawer: MenueItem(),
      body: HomeBody(),
    );
  }
}
