import 'package:bta3_tanmya/Screens/favourite/componnent/FavouriteGrid.dart';
import 'package:flutter/material.dart';

class FavouritelistBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: ListView(
        shrinkWrap: true,
        primary: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: [
          FavouriteGrid(),
        ],
      ),
    ));
  }
}
