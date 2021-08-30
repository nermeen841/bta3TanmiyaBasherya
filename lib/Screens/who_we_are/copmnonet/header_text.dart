import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  final String title;
  const HeaderTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      textDirection: TextDirection.rtl,
      children: [
        Text(
          title,
          textDirection: TextDirection.rtl,
          style: headingStyle.copyWith(
              color: HexColor("#2972B7"),
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
