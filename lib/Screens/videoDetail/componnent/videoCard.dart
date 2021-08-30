import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  final String title;

  const VideoCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        textDirection: TextDirection.rtl,
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/45.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              Text(
                title,
                style: headingStyle.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                  ),
                  spaceW(15),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
