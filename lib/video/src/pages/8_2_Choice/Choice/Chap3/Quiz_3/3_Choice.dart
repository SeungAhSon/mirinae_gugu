import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap3/Quiz_3/3_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap3/Quiz_3/3_quiz_controller.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Choice33 extends StatelessWidget {
  @override
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading1_2_",true);
  }


  Widget build(BuildContext context) {
    finish();
    QuestionController_33 _controller = Get.put(QuestionController_33());
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
              Get.delete<QuestionController_33>();
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Body_3(),
    );
  }
}