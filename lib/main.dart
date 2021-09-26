import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/controller/YoutubeDetailController.dart';
import 'package:mirinae_gugu/video/src/pages/Video_home.dart';
import 'package:mirinae_gugu/video/src/repository/Youtube_Repository.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/services.dart';
import 'package:mirinae_gugu/video/src/components/initbinding.dart';

//현재 상태
//사용하는 페이지 home 하나
//그냥 home만 구현


import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override

  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]); //세로 고정
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

    );



    // return GetMaterialApp(
    //   initialBinding: InitBinding(),
    //   getPages: [
    //     GetPage(name: '/', page: ()=>Home())
    //   ],
    // );

    // Get.put(YoutubeRepository(),permanent: true);

  }

}
// void main() {
//   runApp(Home());
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
//         GetPage(name: '/', page: ()=>App()),
//       ],
//     );
//   }
// }