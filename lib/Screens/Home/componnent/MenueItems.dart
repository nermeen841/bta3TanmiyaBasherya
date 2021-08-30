import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/Articles/articlesScreen.dart';
import 'package:bta3_tanmya/Screens/BookLibrary/book_library_screen.dart';
import 'package:bta3_tanmya/Screens/Home/componnent/oneMenueItem.dart';
import 'package:bta3_tanmya/Screens/Home/componnent/poweredBy.dart';
import 'package:bta3_tanmya/Screens/Home/componnent/social_icon.dart';
import 'package:bta3_tanmya/Screens/LecturesPlaylist/lectureplaylistScreen.dart';
import 'package:bta3_tanmya/Screens/contact_us/contactusScreen.dart';
import 'package:bta3_tanmya/Screens/favourite/favouriteScreen.dart';
import 'package:bta3_tanmya/Screens/notification/emptyNotificationScreen.dart';
import 'package:bta3_tanmya/Screens/privacypolicy/privacypolicyScreen.dart';
import 'package:bta3_tanmya/Screens/who_we_are/whoWeAre.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenueItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: ListView(
        children: [
          Container(
            color: Colors.white,
            child: DrawerHeader(
                child: Center(
              child: Image.asset("assets/images/6.png"),
            )),
          ),
          Container(
            color: HexColor("#2972B7"),
            child: Column(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SubMenueItem(
                  title: "الاشعارات",
                  icon: Icons.notifications,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmptyNotificationScreen())),
                ),
                SubMenueItem(
                  title: "المفضله",
                  icon: Icons.favorite,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FavouriteScreen())),
                ),
                SubMenueItem(
                  title: "المقالات",
                  icon: Icons.edit,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ArticlesScreen())),
                ),
                SubMenueItem(
                  title: "سلسه المحاضرات",
                  icon: Icons.map,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LecturePlaylistScreen())),
                ),
                SubMenueItem(
                  title: "فيديوهات الاطفال",
                  icon: Icons.video_call,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LecturePlaylistScreen())),
                ),
                SubMenueItem(
                  title: "فيديوهات",
                  icon: Icons.videocam,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LecturePlaylistScreen())),
                ),
                SubMenueItem(
                  title: "مكتبه الكتب",
                  icon: Icons.library_books,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookLibraryScreen())),
                ),
                SubMenueItem(
                  title: "اتصل بنا",
                  icon: FontAwesomeIcons.phone,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactusScreen())),
                ),
                SubMenueItem(
                  title: "من نحن",
                  icon: Icons.article,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WhoWeareScreen())),
                ),
                SubMenueItem(
                  title: "سياسه الخصوصيه",
                  icon: Icons.lock,
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PrivacyPolicyScreen())),
                ),
                SocialIcons(),
                spaceH(20),
                PoweredBy(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
