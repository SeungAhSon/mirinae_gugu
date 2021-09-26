import 'package:get/get.dart';

class YoutubeDetailController extends GetxController{
  @override
  void onInit(){
    print(Get.parameters["videoId"]);
    super.onInit();
  }
}