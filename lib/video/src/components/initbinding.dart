import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/repository/Youtube_Repository.dart';

class InitBinding implements Bindings{
  @override
  void dependencies(){
    Get.put(YoutubeRepository(),permanent: true);
  }
}