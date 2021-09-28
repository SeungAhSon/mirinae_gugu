import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/models/youtube_video_result.dart';

class YoutubeRepository extends GetConnect{
  static  YoutubeRepository get to => Get.find();

  @override
  void onInit(){
    httpClient.baseUrl = "https://www.googleapis.com";
    super.onInit();
  }
  Future<YoutubeVideoResult?> loadVideos() async {
    String? url = "/youtube/v3/videos?part=snippet,status,statistics&id=ewYbqtJuq_E&type=video&videoDefinition=high&key=AIzaSyBEp_uK4thAnGLMhK4rpPLUe_pivZ-mgDQ";
    final response = await get(url);

    if(response.status.hasError){
      return Future.error(response.statusText);
    }else{
      if(response.body["items"] != null && response.body["items"].length > 0){
        return YoutubeVideoResult.fromJson(response.body);
      }
    }
  }
}