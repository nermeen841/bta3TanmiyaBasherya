// import 'package:bta3_tanmya/Componnent/components/constants.dart';
// import 'package:bta3_tanmya/Screens/Articles/Componnent/TabbarListData.dart';
// import 'package:bta3_tanmya/Screens/BookLibrary/Componnent/TabBarlistData.dart';
// import 'package:bta3_tanmya/Screens/LecturesPlaylist/componnent/lecturegrid.dart';
// import 'package:flutter/material.dart';

// class ProfileData extends StatefulWidget {
//   const ProfileData({Key? key}) : super(key: key);

//   @override
//   _ProfileDataState createState() => _ProfileDataState();
// }

// class _ProfileDataState extends State<ProfileData>
//     with SingleTickerProviderStateMixin {
//   late TabController tabController;

//   @override
//   void initState() {
//     tabController = TabController(length: 3, vsync: this);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         elevation: 0.0,
//         bottom: TabBar(
//           isScrollable: true,
//           controller: tabController,
//           unselectedLabelColor: HexColor("#3E5481"),
//           labelColor: Colors.white,
//           indicatorColor: HexColor("#3E5481"),
//           indicator: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               shape: BoxShape.rectangle,
//               color: HexColor("#3E5481")),
//           tabs: [
//             Container(
//               decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(10)),
//               padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//               child: Text(
//                 "كتب",
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Cairo'),
//               ),
//             ),
//             Container(
//               decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(10)),
//               padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//               child: Text(
//                 "فيديو",
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Cairo'),
//               ),
//             ),
//             Container(
//               decoration:
//                   BoxDecoration(borderRadius: BorderRadius.circular(10)),
//               padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
//               child: Text(
//                 "مقالات",
//                 style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     fontFamily: 'Cairo'),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: tabController,
//         children: [
//           TabBarListBooks(),
//           LecturesGrid(),
//           TabBarList(),
//         ],
//       ),
//     );
//   }
// }
