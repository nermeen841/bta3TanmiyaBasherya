import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/videoDetail/componnent/videoCard.dart';
import 'package:bta3_tanmya/Screens/who_we_are/copmnonet/description.dart';
import 'package:flutter/material.dart';

class VideodetailBody extends StatelessWidget {
  const VideodetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              // Image.asset(
              //   "assets/images/4.jpg",
              //   height: 160,
              //   width: double.infinity,
              //   fit: BoxFit.cover,
              // ),
              ListView(
                primary: true,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                physics: BouncingScrollPhysics(),
                children: [
                  VideoCard(
                    title: "اسم المحاضره",
                  ),
                  spaceH(15),
                  DescriptionBody(
                    description:
                        "نموذج افتراضي يوضع للتصميم ليعرض علي العميل ليتطور طريقه وضع النصوص بالتصاميم او فلاير علي سبيل المثال ....",
                  ),
                  spaceH(50),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
