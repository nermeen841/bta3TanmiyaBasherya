import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderTitleData extends StatelessWidget {
  final String articletitle;
  final String sectionTitle;

  const HeaderTitleData(
      {Key? key, required this.articletitle, required this.sectionTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Text(
          articletitle,
          style: headingStyle.copyWith(
              fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
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
              padding: EdgeInsets.only(right: 180),
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
                    onTap: () {},
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
        spaceH(10),
        Divider(
          color: HexColor("#C4C4C4"),
        )
      ],
    );
  }
}
