// import 'dart:developer';
// import 'package:mirinae_gugu/video/src/app.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:mirinae_gugu/video/src/binding/InitBinding.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget{
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context){
//     return GetMaterialApp(
//       title: "유튜브 클론 앱",
//       theme: ThemeData(
//         primaryColor: Colors.white,
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       initialBinding: InitBinding(),
//       initialRoute: "/",
//       getPages: [
//         GetPage(name: '/', page: ()=>App())
//       ],
//     );
//   }
// }