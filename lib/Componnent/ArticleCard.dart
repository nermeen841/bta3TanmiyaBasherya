import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share/share.dart';

class ArticleCard extends StatelessWidget {
  final String articleTitle;
  final String image;
  final String sectionTitle;
  final VoidCallback press;

  const ArticleCard(
      {Key? key,
      required this.articleTitle,
      required this.image,
      required this.sectionTitle,
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
            height: 110,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
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
                    Text(
                      articleTitle,
                      style: headingStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    spaceH(10),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Icon(FontAwesomeIcons.newspaper,
                            size: 20, color: HexColor("#2972B7")),
                        spaceW(10),
                        Text(
                          sectionTitle,
                          style: headingStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: HexColor("#2972B7")),
                        ),
                      ],
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
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
