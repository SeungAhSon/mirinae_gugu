import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/app.dart';
import 'package:mirinae_gugu/video/src/components/youtube_bottom_sheet.dart';

enum RouteName {Home,Explore,Add}

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    if(RouteName.values[index] == RouteName.Add){
      _showBottomSheet();
    }else{
      currentIndex(index);
    }
  }
  void _showBottomSheet(){
    Get.bottomSheet(YoutubeBottomSheet());
  }
}