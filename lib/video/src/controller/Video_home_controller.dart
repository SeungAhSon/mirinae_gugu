import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/repository/Youtube_Repository.dart';

class VideoHomeController extends GetConnect{
  static VideoHomeController get to => Get.find();

  @override
  void onInit(){

      _videoLoad();
    super.onInit();
  }
  void _videoLoad() {

    YoutubeRepository.to.loadVideos();
  }
}