import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class SubMenueItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback press;

  const SubMenueItem(
      {Key? key, required this.title, required this.icon, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      title: Row(
        textDirection: TextDirection.rtl,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          spaceW(10),
          Text(
            title,
            style: headingStyle.copyWith(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
