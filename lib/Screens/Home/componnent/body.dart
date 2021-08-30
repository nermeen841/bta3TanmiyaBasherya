import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/BookLibrary/book_library_screen.dart';
import 'package:bta3_tanmya/Screens/Home/body_componnent/adsPannar.dart';
import 'package:bta3_tanmya/Screens/Home/body_componnent/articlesList.dart';
import 'package:bta3_tanmya/Screens/Home/body_componnent/sectionCard.dart';
import 'package:bta3_tanmya/Screens/LecturesPlaylist/lectureplaylistScreen.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SectionCard(
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BookLibraryScreen())),
                    title: "مكتبه الكتب",
                    image: "assets/images/28.jpg",
                    color: HexColor("#03AB6A"),
                  ),
                  SectionCard(
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LecturePlaylistScreen())),
                    title: "سلسة المحاضرات",
                    image: "assets/images/28.jpg",
                    color: HexColor("#F00B27"),
                  ),
                  SectionCard(
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LecturePlaylistScreen())),
                    title: "مكتبة الفيديو",
                    image: "assets/images/45.jpg",
                    color: HexColor("#E8BD26"),
                  ),
                ],
              ),
            ),
            spaceH(20),
            ArticleListData()
          ],
        ),
      ),
    );
  }
}
