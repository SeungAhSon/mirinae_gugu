import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_quiz_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Choice13 extends StatelessWidget {
  @override
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading1_2",true);
  }

  Widget build(BuildContext context) {
    finish();
    QuestionController_13 _controller = Get.put(QuestionController_13());
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
              Get.delete<QuestionController_13>();
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Body_3(),
    );
  }
}