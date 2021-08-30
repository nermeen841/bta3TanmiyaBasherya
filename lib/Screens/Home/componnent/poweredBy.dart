import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class PoweredBy extends StatelessWidget {
  const PoweredBy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Powered by Technomasr",
            style: headingStyle.copyWith(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "V 1.0",
            style: headingStyle.copyWith(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
