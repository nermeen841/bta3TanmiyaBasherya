import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/Home/componnent/MenueItems.dart';
import 'package:bta3_tanmya/Screens/LecturesPlaylist/componnent/body.dart';
import 'package:flutter/material.dart';

class LecturePlaylistScreen extends StatelessWidget {
  const LecturePlaylistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#2972B7"),
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: [
                Text(
                  "سلسه المحاضرات",
                  style:
                      headingStyle.copyWith(color: Colors.white, fontSize: 16),
                ),
                spaceW(20),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
      drawer: MenueItem(),
      body: LecturePlaylistBody(),
    );
  }
}
