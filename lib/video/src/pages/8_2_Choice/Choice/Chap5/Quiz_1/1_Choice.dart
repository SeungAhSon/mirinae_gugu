import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap5/Quiz_1/1_quiz_controller.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap5/Quiz_1/1_body.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Choice51 extends StatelessWidget {
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading5_1",true);
  }
  @override
  Widget build(BuildContext context) {
    finish();
    QuestionController_51 _controller = Get.put(QuestionController_51());
    return Scaffold(
      appBar: AppBar(
        title: Text('복습시험', style: TextStyle(color: Colors.black,fontSize: 24.sp,fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 3.0,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.blue),
        leading: Semantics(
          label: "이전 페이지로 이동",
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () {
              Get.delete<QuestionController_51>();
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: WillPopScope(
        child: Body_1(),
        onWillPop: () {
          return Future(() => false);
        },
      ));
  }
}