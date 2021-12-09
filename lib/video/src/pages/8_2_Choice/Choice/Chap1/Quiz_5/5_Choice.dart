import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_quiz_controller.dart';

class Choice825 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController_5 _controller = Get.put(QuestionController_5());
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: Body_5(),
    );
  }
}