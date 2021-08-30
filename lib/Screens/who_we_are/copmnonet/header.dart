import 'package:flutter/material.dart';

class HeaderAppbar extends StatelessWidget {
  const HeaderAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: Stack(
        textDirection: TextDirection.rtl,
        children: [
          Image.asset(
            "assets/images/4.jpg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
