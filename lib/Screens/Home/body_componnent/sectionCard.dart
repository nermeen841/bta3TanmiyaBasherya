import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  final String title;
  final String image;
  final VoidCallback press;
  final Color color;

  const SectionCard(
      {Key? key,
      required this.title,
      required this.image,
      required this.press,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: Container(
          width: 115,
          height: 107,
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 115,
                height: 3,
                color: color,
              ),
              Image.asset(
                image,
                width: 100,
                height: 65,
                fit: BoxFit.contain,
              ),
              Text(
                title,
                style: headingStyle.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
