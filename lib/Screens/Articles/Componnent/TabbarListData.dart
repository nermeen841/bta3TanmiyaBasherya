import 'package:bta3_tanmya/Componnent/ArticleCard.dart';
import 'package:bta3_tanmya/Screens/signleArticle/singleArticleScreen.dart';
import 'package:flutter/material.dart';

class TabBarList extends StatelessWidget {
  const TabBarList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        primary: true,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ArticleCard(
            articleTitle: "اسم المقال",
            sectionTitle: "اسم القسم",
            image: "assets/images/5.jpg",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SingleArticleScreen())),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
      ),
    );
  }
}
