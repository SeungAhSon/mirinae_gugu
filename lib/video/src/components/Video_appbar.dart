// import 'package:flutter/material.dart';
//
// class VideoAppBar extends StatelessWidget{
//   const VideoAppBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context){
//     return SafeArea(
//       child: Scaffold(
//         body: WillPopScope(    // <- Scaffold body만 감싼다.
//           child: Center(
//           ),
//           onWillPop: () {
//
//             return Future(() => false);
//           },
//         ),
//         appBar: AppBar(
//
//           backgroundColor: Colors.white,
//           title: Text('구구절절',
//             style: TextStyle(
//               color: Colors.black,
//               fontSize: 20,
//             ),),
//           centerTitle: true,
//           leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             color: Colors.black,
//             iconSize: 25,
//             icon: Icon(Icons.arrow_back),
//
//           ),
//
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.bookmark_outline),
//               iconSize: 25,
//               color: Colors.black,
//               onPressed: () {
//                 print('GD');
//               }
//           ),
//           ],
//         ),
//       ),
//     );
//   }
// }