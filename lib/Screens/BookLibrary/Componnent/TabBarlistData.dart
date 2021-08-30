import 'package:bta3_tanmya/Componnent/booksCard.dart';
import 'package:bta3_tanmya/Screens/BookDetail/bookDetailScreen.dart';
import 'package:flutter/material.dart';

class TabBarListBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        shrinkWrap: true,
        primary: false,
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return BooksCard(
            articleTitle: "اسم الكتاب",
            writerTitle: "اسم الكاتب",
            image: "assets/images/5.jpg",
            press: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => BookDetail())),
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
