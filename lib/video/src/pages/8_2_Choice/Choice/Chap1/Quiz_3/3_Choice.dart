import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_quiz_controller.dart';

class Choice823 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController_3 _controller = Get.put(QuestionController_3());
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: Body_3(),
    );
  }
}