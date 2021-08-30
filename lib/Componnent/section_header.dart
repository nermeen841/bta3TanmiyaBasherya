import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const SectionHeader({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textDirection: TextDirection.rtl,
      children: [
        Text(
          title,
          style: headingStyle.copyWith(
              color: HexColor("#2972B7"),
              fontSize: 14,
              fontWeight: FontWeight.bold),
        ),
        InkWell(
          onTap: press,
          child: Text(
            "المزيد",
            style: headingStyle.copyWith(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
