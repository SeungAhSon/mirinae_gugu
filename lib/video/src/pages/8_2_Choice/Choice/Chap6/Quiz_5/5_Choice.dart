import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap6/Quiz_5/5_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap6/Quiz_5/5_quiz_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Choice65 extends StatelessWidget {
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading1_3",true);
  }
  @override
  Widget build(BuildContext context) {
    finish();
    QuestionController_65 _controller = Get.put(QuestionController_65());
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: Body_5(),
    );
  }
}