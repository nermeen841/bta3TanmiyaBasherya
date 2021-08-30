import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/notification/Compnnent/notificationCard.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationBody extends StatelessWidget {
  List<Widget> item = [
    NotificationCard(),
    NotificationCard(),
    NotificationCard(),
    NotificationCard(),
    NotificationCard(),
    NotificationCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: ListView.separated(
            shrinkWrap: true,
            primary: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(item[index].toString()),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  item.removeAt(index);
                },
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Spacer(),
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                child: NotificationCard(),
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                color: HexColor("#CACACA"),
              );
            },
            itemCount: item.length),
      ),
    );
  }
}
