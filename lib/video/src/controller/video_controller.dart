import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/models/video.dart';
import 'package:mirinae_gugu/video/src/repository/Youtube_Repository.dart';


class VideoController extends GetxController{
  Video video;
  VideoController({required this.video});
  @override
  void onInit(){
    //YoutubeRepository.to.getVideoInfoById();
    super.onInit();
  }
}