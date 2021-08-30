import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/notification/notificationScreen.dart';
import 'package:flutter/material.dart';

class EmptyNotificationScreen extends StatelessWidget {
  const EmptyNotificationScreen({Key? key}) : super(key: key);

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
            child: Row(
              children: [
                Text(
                  "الاشعارات",
                  style:
                      headingStyle.copyWith(color: Colors.white, fontSize: 16),
                ),
                spaceW(20),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        textDirection: TextDirection.rtl,
        children: [
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotificationScreen())),
            child: Center(
              child: Icon(
                Icons.notification_add,
                size: 80,
                color: HexColor("#2972B7"),
              ),
            ),
          ),
          spaceH(20),
          Center(
            child: Text(
              "لا توجد اي اشعارات",
              style: headingStyle.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  color: HexColor("#50555C")),
            ),
          )
        ],
      ),
    );
  }
}
