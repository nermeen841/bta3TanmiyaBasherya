import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/Articles/Componnent/TabbarListData.dart';
import 'package:bta3_tanmya/Screens/BookLibrary/Componnent/TabBarlistData.dart';
import 'package:bta3_tanmya/Screens/LecturesPlaylist/componnent/lecturegrid.dart';
import 'package:bta3_tanmya/Screens/profile/componnent/profileHeader.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  _ProfileBodyState createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                ProfileHeader(
                  name: "احمدالسيد احمد",
                  bio: "كاتب ومدرب تنميه بشريه ",
                  bookNum: 3,
                  videoNum: 5,
                ),
                spaceH(20),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Align(
                    alignment: Alignment.center,
                    child: TabBar(
                      isScrollable: true,
                      controller: tabController,
                      unselectedLabelColor: HexColor("#3E5481"),
                      labelColor: Colors.white,
                      indicatorColor: HexColor("#3E5481"),
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: HexColor("#3E5481")),
                      tabs: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Text(
                            "كتب",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Text(
                            "فيديو",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          child: Text(
                            "مقالات",
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                spaceH(20),
                Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      TabBarListBooks(),
                      LecturesGrid(),
                      TabBarList(),
                    ],
                  ),
                ),
                // Container(width: double.infinity, child: ProfileData())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
