import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_1/1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap10/Quiz_2/2_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap10/Quiz_4/4_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap10/Quiz_6/6_Choice.dart';
import 'package:mirinae_gugu/video/src/widget/button_test.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Test_10 extends StatelessWidget{
  bool state1 = false;
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 7),
            Text('10단원. 복습 시험', style: TextStyle(fontSize: 20.sp+size, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 7),
            Container(
              height: MediaQuery.of(context).size.height*0.35,
              child:Image.asset('assets/test_chapter/10_house.png'),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt,state: state1, onTap: Choice821(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic, state: state1,onTap: Choice102(),), //StartPage()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt,state: state1, onTap: Choice823(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic,state: state1, onTap: Choice104(),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt, state: state1,onTap: Choice825(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic,state: state1, onTap: Choice106(),),
              ],
            ),

          ],
      ),
      appBar: DefaultAppBar(title: '구구절절'),
    ),
    );
  }
}