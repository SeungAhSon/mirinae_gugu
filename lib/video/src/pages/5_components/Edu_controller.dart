import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '5_video.dart';

class Edu_controller extends GetxController
    with SingleGetTickerProviderMixin {

  late PageController _pageController;

  PageController get pageController => this._pageController;

  final List<VideoList_1> _questions = Video1_1.map(
        (question) =>
        VideoList_1(
          id: question['id'],
          VideoId: question['VideoId'],
          favoriteButtons: question['favoriteButtons'],),
  ).toList();


}