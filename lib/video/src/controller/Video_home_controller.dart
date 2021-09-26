import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/models/youtube_video_result.dart';
import 'package:mirinae_gugu/video/src/repository/Youtube_Repository.dart';

class VideoHomeController extends GetConnect{
  static VideoHomeController get to => Get.find();

  @override
  void onInit(){
    print("여기 홈컨트롤0");
      _videoLoad();
    super.onInit();
  }
  void _videoLoad() async {
    print("여기 홈컨트롤1");
    var YoutubeVideoResult = await YoutubeRepository.to.loadVideos();
    print("여기 홈컨트롤");
    print(YoutubeVideoResult!.items.length);
  }
}