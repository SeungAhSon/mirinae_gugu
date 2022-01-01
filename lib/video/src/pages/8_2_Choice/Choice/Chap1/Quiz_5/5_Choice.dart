import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_quiz_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Choice15 extends StatelessWidget {
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading1_3",true);
  }
  @override
  Widget build(BuildContext context) {
    finish();
    QuestionController_15 _controller = Get.put(QuestionController_15());
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: Body_5(),
    );
  }
}