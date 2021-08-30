import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/Home/componnent/MenueItems.dart';
import 'package:bta3_tanmya/Screens/Home/componnent/search_button.dart';
import 'package:flutter/material.dart';

import 'Componnent/body.dart';

class BookLibraryScreen extends StatelessWidget {
  const BookLibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: HexColor("#2972B7"),
          iconTheme: IconThemeData(color: Colors.white),
          title: SearchButton()),
      drawer: MenueItem(),
      body: BooklibraryBody(),
    );
  }
}
