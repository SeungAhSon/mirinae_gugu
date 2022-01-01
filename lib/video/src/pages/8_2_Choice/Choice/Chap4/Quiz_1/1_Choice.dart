import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap4/Quiz_1/1_quiz_controller.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap4/Quiz_1/1_body.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Choice41 extends StatelessWidget {
  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("reading2_1",true);
  }
  @override
  Widget build(BuildContext context) {
    finish();
    QuestionController_41 _controller = Get.put(QuestionController_41());
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
              Get.delete<QuestionController_41>();
              Navigator.of(context).pop();
            },
          ),
        ),
      ),
      body: Body_1(),
    );
  }
}