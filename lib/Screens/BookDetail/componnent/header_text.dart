import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/profile/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

class HeaderTxt extends StatelessWidget {
  final String title;
  final String writerName;
  final int download;
  const HeaderTxt(
      {Key? key,
      required this.title,
      required this.writerName,
      required this.download})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#F5F5F5"),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Image.asset(
            "assets/images/89.jpg",
            width: 97,
            height: 110,
            fit: BoxFit.cover,
          ),
          spaceW(10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: headingStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen())),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Icon(
                      Icons.person_outline,
                      color: HexColor("#2972B7"),
                    ),
                    spaceW(10),
                    Text(
                      writerName,
                      style: headingStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: HexColor("#2972B7"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 77, top: 40),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text(
                      "$download+",
                      style: headingStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: HexColor("#898A8D"),
                      ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          FontAwesomeIcons.download,
                          color: HexColor("#898A8D"),
                        )),
                    spaceW(15),
                    InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite_outline,
                          color: HexColor("#898A8D"),
                        )),
                    spaceW(15),
                    InkWell(
                        onTap: () {
                          Share.share(
                              'check out my website https://example.com',
                              subject: 'Look what I made!');
                        },
                        child: Icon(
                          Icons.share,
                          color: HexColor("#898A8D"),
                        )),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
