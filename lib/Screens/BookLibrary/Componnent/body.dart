import 'package:bta3_tanmya/Componnent/components/constants.dart';
import 'package:bta3_tanmya/Screens/BookLibrary/Componnent/TabBarlistData.dart';
import 'package:bta3_tanmya/Screens/Home/body_componnent/adsPannar.dart';
import 'package:flutter/material.dart';

class BooklibraryBody extends StatefulWidget {
  const BooklibraryBody({Key? key}) : super(key: key);

  @override
  _BooklibraryBodyState createState() => _BooklibraryBodyState();
}

class _BooklibraryBodyState extends State<BooklibraryBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 5, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: ListView(
            shrinkWrap: true,
            primary: true,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            children: [
              AdsBannar(),
              spaceH(20),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TabBar(
                    isScrollable: true,
                    physics: BouncingScrollPhysics(),
                    controller: tabController,
                    unselectedLabelColor: HexColor("#3E5481"),
                    labelColor: Colors.white,
                    indicatorColor: HexColor("#3E5481"),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                      color: HexColor("#3E5481"),
                    ),
                    tabs: List.generate(
                      5,
                      (index) => Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Center(
                          child: Text(
                            "القسم",
                            style: TextStyle(
                                fontFamily: 'Cairo',
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                      ),
                    )),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    TabBarListBooks(),
                    TabBarListBooks(),
                    TabBarListBooks(),
                    TabBarListBooks(),
                    TabBarListBooks(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
