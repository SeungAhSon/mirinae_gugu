import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/components/Questions.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';

import 'package:mirinae_gugu/video/src/components/body.dart';

class Choice825 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: '복습시험'),
      body: Text('5페이지')
    );
  }
}