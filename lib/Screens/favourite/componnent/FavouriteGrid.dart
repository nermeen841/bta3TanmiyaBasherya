import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:flutter/material.dart';

class FavouriteGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          shrinkWrap: true,
          primary: true,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 0.9),
          itemBuilder: (context, index) {
            return Container(
              width: 175,
              height: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/5.jpg"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      color: Colors.white54,
                      child: Row(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "اسم المحاضره",
                            style: headingStyle.copyWith(
                                fontSize: 14, color: Colors.black),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Icon(Icons.share),
                              ),
                              spaceW(10),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite,
                                  color: HexColor("#AB0D03"),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
