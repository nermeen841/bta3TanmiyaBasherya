import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Componnent/components/size_config.dart';
import 'package:flutter/material.dart';
import 'onBoarding_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "طور ذاتك", "image": "assets/images/17.jpg"},
    {"text": "اكتسب عاده جميله", "image": "assets/images/2.jpg"},
    {"text": "ماذا تنتظر ", "image": "assets/images/3.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Spacer(),
            Expanded(
              flex: 6,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'].toString(),
                  text: splashData[index]['text'].toString(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  textDirection: TextDirection.rtl,
                  children: <Widget>[
                    Spacer(),
                    Row(
                      textDirection: TextDirection.rtl,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? HexColor("#898A8D") : Colors.grey[400],
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
