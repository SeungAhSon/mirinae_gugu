import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap2/Quiz_2/2_voice_quiz_body.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Choice22 extends StatelessWidget {
  @override
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("speaking2_1",true);
  }
  Widget build(BuildContext context) {
    finish();
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: StartPage_2(),
    );
  }
}