import 'package:bta3_tanmya/Componnent/components/socal_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SocalCard(
            press: () {},
            icon: FontAwesomeIcons.facebookF,
          ),
        ),
        Center(
          child: SocalCard(
            press: () {},
            icon: FontAwesomeIcons.instagram,
          ),
        ),
        Center(
          child: SocalCard(
            press: () {},
            icon: FontAwesomeIcons.youtube,
          ),
        ),
      ],
    );
  }
}
