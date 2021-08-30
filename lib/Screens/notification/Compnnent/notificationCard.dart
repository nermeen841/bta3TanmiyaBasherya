import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Image.asset(
            "assets/images/4.jpg",
            width: 90,
            height: 110,
            fit: BoxFit.cover,
          ),
          spaceW(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "عنوان المقال",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "المحتوي ",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#777777")),
              ),
              Text(
                "22 / 5 / 23021",
                style: headingStyle.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#777777")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
