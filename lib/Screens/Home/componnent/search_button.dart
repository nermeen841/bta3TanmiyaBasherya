import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  _SearchButtonState createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
          color: HexColor("#F2F3F2"), borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              FontAwesomeIcons.search,
              color: HexColor("#2972B7"),
              size: 20,
            ),
            Text(
              "بحث",
              style: headingStyle.copyWith(
                  color: HexColor("#50555C"),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
