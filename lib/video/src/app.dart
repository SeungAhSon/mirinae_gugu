import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/controller/app_controller.dart';
import 'package:mirinae_gugu/video/src/pages/3_home.dart';
import 'package:mirinae_gugu/video/src/pages/6_Record.dart';
import 'package:mirinae_gugu/video/src/pages/9_Add.dart';
import 'package:mirinae_gugu/video/src/pages/9_setting.dart';


class App extends GetView<AppController>{ //루트 경로로  만듦
  const App({Key? key}) : super(key: key);
  static const PrimaryColor1 = const Color(0xFF708FF8);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Obx(() {
          switch(RouteName.values[controller.currentIndex.value]) {
            case RouteName.Home:
              return Home();
              break;

            case RouteName.Record:
              return Record();
              break;

            case RouteName.Add:
              return Setting();
              break;
          }
          return Container();
        }),
        bottomNavigationBar: Obx(
              ()=> BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: controller.currentIndex.value,
            showSelectedLabels: true,
            selectedFontSize: 15,
            selectedItemColor: Colors.black,
            onTap: controller.changePageIndex,

            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  activeIcon: Icon(Icons.home_outlined, color: Colors.blueAccent,),
                  label : "홈"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.mic_none),
                  activeIcon: Icon(Icons.mic_none, color: Colors.blueAccent,),
                  label : "녹음"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.more_horiz),
                  activeIcon: Icon(Icons.more_horiz, color: Colors.blueAccent,),
                  label : "더보기"),
            ],),));
  }
}
