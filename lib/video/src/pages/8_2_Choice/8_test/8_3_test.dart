import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap3/Quiz_1/1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap3/Quiz_3/3_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap3/Quiz_5/5_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap3/Quiz_2/2_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap3/Quiz_4/4_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap3/Quiz_6/6_Choice.dart';
import 'package:mirinae_gugu/video/src/widget/button_test.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test_3 extends StatelessWidget{
  bool state1 = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 7.h),
            Text('3단원. 복습 시험', style: TextStyle(fontSize: 20.sp+size, color: Colors.black, fontWeight: FontWeight.bold)),
        Semantics(
          label: "건강 ",
            child: Container(
              height: MediaQuery.of(context).size.height*0.35.h,
              child:Image.asset('assets/test_chapter/3_health.png'),
            )),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  TestButton(text: '동영상',  color: Colors.blueAccent,icon: Icons.camera_alt,state: state1, onTap: Choice31(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic,state: state1, onTap: Choice32(),), //StartPage()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt,state: state1, onTap: Choice33(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic, state: state1,onTap: Choice34(),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt, state: state1,onTap: Choice35(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic, state: state1,onTap: Choice36(),),
              ],
            ),
            SizedBox(height: 30.h),
          ],
      ),
      appBar: DefaultAppBar(title: '구구절절'),
    );
  }
}