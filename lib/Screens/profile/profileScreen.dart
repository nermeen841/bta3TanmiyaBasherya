import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/Home/componnent/MenueItems.dart';
import 'package:flutter/material.dart';

import 'componnent/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#2972B7"),
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      drawer: MenueItem(),
      body: ProfileBody(),
    );
  }
}
