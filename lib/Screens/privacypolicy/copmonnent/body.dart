import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/who_we_are/copmnonet/description.dart';
import 'package:bta3_tanmya/Screens/who_we_are/copmnonet/header.dart';
import 'package:bta3_tanmya/Screens/who_we_are/copmnonet/header_text.dart';
import 'package:flutter/material.dart';

class PrivacyBody extends StatelessWidget {
  const PrivacyBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: [
              HeaderAppbar(),
              ListView(
                shrinkWrap: true,
                primary: true,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                children: [
                  HeaderTitle(
                    title: "سياسة الخصوصية",
                  ),
                  spaceH(20),
                  DescriptionBody(
                    description:
                        "نموذج افتراضي يوضع للتصميم ليعرض علي العميل ليتطور طريقه وضع النصوص بالتصاميم او فلاير علي سبيل المثال ....",
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
