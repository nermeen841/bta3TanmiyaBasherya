import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: HexColor("#03AB6A"),
            child: Center(
              child: Text(
                "تحميل",
                style: headingStyle.copyWith(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            color: HexColor("#099861"),
            child: Center(
              child: Icon(
                FontAwesomeIcons.download,
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
