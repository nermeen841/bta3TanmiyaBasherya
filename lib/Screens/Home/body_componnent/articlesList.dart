import 'package:bta3_tanmya/Componnent/ArticleCard.dart';
import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Componnent/section_header.dart';
import 'package:bta3_tanmya/Screens/Articles/articlesScreen.dart';
import 'package:bta3_tanmya/Screens/signleArticle/singleArticleScreen.dart';
import 'package:flutter/material.dart';

class ArticleListData extends StatelessWidget {
  const ArticleListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      textDirection: TextDirection.rtl,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: "مقالات بتاع تنميه",
          press: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => ArticlesScreen())),
        ),
        spaceH(20),
        ListView.separated(
          shrinkWrap: true,
          primary: true,
          physics: BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return ArticleCard(
              articleTitle: "اسم المقال",
              sectionTitle: "اسم القسم",
              image: "assets/images/5.jpg",
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleArticleScreen())),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
        )
      ],
    );
  }
}
