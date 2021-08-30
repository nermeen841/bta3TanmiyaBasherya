import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/constants.dart';

class ReadOnlineButton extends StatelessWidget {
  const ReadOnlineButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: HexColor("#2972B7"),
            child: Center(
              child: Text(
                "قراءه اونلاين",
                style: headingStyle.copyWith(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: HexColor("#21609A"),
            child: Center(
              child: Icon(
                FontAwesomeIcons.eye,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
