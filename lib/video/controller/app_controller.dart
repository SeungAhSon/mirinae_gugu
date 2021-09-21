import 'package:get/get.dart';

import 'package:mirinae_gugu/video/src/app.dart';

class AppController extends GetxService {
  static AppController get to => Get.find();
  RxInt currentIndex = 0.obs;

  void changePageIndex(int index) {
    currentIndex(index);
  }
}