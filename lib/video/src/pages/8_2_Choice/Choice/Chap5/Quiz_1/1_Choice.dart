import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap5/Quiz_1/1_quiz_controller.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap5/Quiz_1/1_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Choice51 extends StatelessWidget {
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading2_1",true);
  }
  @override
  Widget build(BuildContext context) {
    finish();
    QuestionController_51 _controller = Get.put(QuestionController_51());
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: Body_1(),
    );
  }
}