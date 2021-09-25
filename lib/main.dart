import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
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
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]); //세로 고정
    Get.put(YoutubeRepository(),permanent: true);
    return MaterialApp(
        home: Home(),
    );

    // Get.put(YoutubeRepository(),permanent: true);
    // return MaterialApp(
    //   home: Home(),
    //
    // );

  }

}
// initialBinding: InitBinding(),
// getPages: [
// GetPage(name: '/', page: ()=>Home())
// ],