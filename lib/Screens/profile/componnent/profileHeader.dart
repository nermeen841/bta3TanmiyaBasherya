import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String bio;
  final int bookNum;
  final int videoNum;

  const ProfileHeader(
      {Key? key,
      required this.name,
      required this.bio,
      required this.bookNum,
      required this.videoNum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      textDirection: TextDirection.rtl,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 20),
          child: Card(
            elevation: 2,
            color: HexColor("#F5F5F5"),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(26)),
            child: Container(
              padding: EdgeInsets.only(top: 10, right: 105, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    name,
                    style: headingStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  spaceH(10),
                  Text(
                    bio,
                    style: headingStyle.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  spaceH(20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        FontAwesomeIcons.book,
                        color: Colors.black,
                      ),
                      spaceW(5),
                      Text(
                        " كتاب $bookNum",
                        style: headingStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      spaceW(30),
                      Icon(
                        FontAwesomeIcons.youtube,
                        color: Colors.black,
                      ),
                      spaceW(5),
                      Text(
                        "فيديو $videoNum",
                        style: headingStyle.copyWith(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage("assets/images/7.jpg"),
          ),
        ),
      ],
    );
  }
}
