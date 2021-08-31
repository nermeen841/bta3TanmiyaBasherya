import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/profile/profileScreen.dart';
import 'package:flutter/material.dart';
import 'downloadButton.dart';
import 'package:share/share.dart';

class BooksCard extends StatelessWidget {
  final String articleTitle;
  final String image;
  final String writerTitle;
  final VoidCallback press;

  const BooksCard(
      {Key? key,
      required this.articleTitle,
      required this.image,
      required this.writerTitle,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
          color: Colors.white,
          elevation: 2,
          child: Container(
            color: Colors.white,
            // height: 150,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  image,
                  width: 130,
                  fit: BoxFit.cover,
                ),
                spaceW(10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  textDirection: TextDirection.rtl,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        articleTitle,
                        style: headingStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    spaceH(10),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen())),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Icon(Icons.person_outlined,
                              size: 20, color: HexColor("#2972B7")),
                          spaceW(10),
                          Text(
                            writerTitle,
                            style: headingStyle.copyWith(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#2972B7")),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.favorite_outline,
                              color: HexColor("#898A8D"),
                            ),
                          ),
                          spaceW(10),
                          InkWell(
                            onTap: () {
                              Share.share(
                                  'check out my website https://example.com',
                                  subject: 'Look what I made!');
                            },
                            child: Icon(
                              Icons.share,
                              color: HexColor("#898A8D"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    spaceH(10),
                    Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: DownloadButton()),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
