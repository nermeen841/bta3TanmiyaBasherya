import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/Home/body_componnent/adsPannar.dart';
import 'package:bta3_tanmya/Screens/LecturesPlaylist/componnent/lecturegrid.dart';
import 'package:flutter/material.dart';

class LecturePlaylistBody extends StatelessWidget {
  const LecturePlaylistBody({Key? key}) : super(key: key);

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
          AdsBannar(),
          spaceH(30),
          LecturesGrid(),
        ],
      ),
    ));
  }
}
