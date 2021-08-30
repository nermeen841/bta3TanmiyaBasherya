import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class DescriptionBody extends StatelessWidget {
  final String description;
  const DescriptionBody({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      textDirection: TextDirection.rtl,
      children: [
        Text(
          description,
          textDirection: TextDirection.rtl,
          style: headingStyle.copyWith(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
