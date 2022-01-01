import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap2/Quiz_5/5_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap2/Quiz_5/5_quiz_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Choice25 extends StatelessWidget {
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading2_3",true);
  }
  @override
  Widget build(BuildContext context) {
    finish();
    QuestionController_25 _controller = Get.put(QuestionController_25());
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
              Get.delete<QuestionController_25>();
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: WillPopScope(
        child: Body_5(),
        onWillPop: () {
          return Future(() => false);
        },
      ));
  }
}