import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/components/voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Q_Widget/quiz_controller.dart';

import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Q_Widget/body.dart';

class Choice822 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: StartPage(),
    );
  }


}