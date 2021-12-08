import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Q_Widget/result.dart';
import '5_video_list.dart';


class Edu_controller extends GetxController
    with SingleGetTickerProviderMixin {

  late PageController _pageController;

  PageController get pageController => _pageController;

  final List<VideoList_1> _Video_c_1 = Video1_1.map(
        (sad) =>
        VideoList_1(
          id: sad['id'],
 ),
  ).toList();

  List<VideoList_1> get Video_c_1 => _Video_c_1;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;


  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;





  @override
  void onInit() {
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _pageController.dispose();
  }

  String? _VideoId_;
  String? get VideoId_ => _VideoId_;



  void add(VideoList_1 questionx) {


    Future.delayed(Duration(seconds: 1), () {
      if (_questionNumber.value != _Video_c_1.length) {
        _pageController.jumpToPage(_questionNumber.value++);
        print(_Video_c_1.length);
      }else
        {
          Get.off(ScoreScreen());
        }
    });
  }


  void dda(VideoList_1 question) {


    Future.delayed(Duration(seconds: 1), () {
      if (_questionNumber.value != _Video_c_1.length) {
        _pageController.jumpToPage(_questionNumber.value--);
        print(_Video_c_1.length);
      }else
      {
        Get.off(ScoreScreen());
      }
    });
  }


  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
