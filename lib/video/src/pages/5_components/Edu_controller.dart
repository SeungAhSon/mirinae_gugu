import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '5_video_list.dart';


class Edu_controller extends GetxController
    with SingleGetTickerProviderMixin {

  late PageController _pageController;

  PageController get pageController => this._pageController;

  final List<VideoList_1> _Video_c_1 = Video1_1.map(
        (sad) =>
        VideoList_1(
          id: sad['id'],
          VideoId: sad['VideoId'],
          favoriteButtons: sad['favoriteButtons'],),
  ).toList();

  List<VideoList_1> get Video_c_1 => _Video_c_1;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;


  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;





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



  void checkAns(VideoList_1 question, int selectedIndex) {
    _isAnswered = true;

    Future.delayed(Duration(seconds: 1), () {
      if (_questionNumber.value != _Video_c_1.length) {
        _isAnswered = false;
        _pageController.jumpToPage(_questionNumber.value++);
      }
    });
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
