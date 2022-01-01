import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap7/Quiz_3/3_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap7/Quiz_3/3_quiz_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Choice73 extends StatelessWidget {
  @override
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading1_2_",true);
  }


  Widget build(BuildContext context) {
    finish();
    QuestionController_73 _controller = Get.put(QuestionController_73());
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: Body_3(),
    );
  }
}