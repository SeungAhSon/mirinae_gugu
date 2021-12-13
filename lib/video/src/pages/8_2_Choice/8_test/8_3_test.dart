import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_2/2_voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_1/1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_2/2_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_4/4_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_6/6_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap2/Quiz_2/2_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap2/Quiz_4/4_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap2/Quiz_6/6_Choice.dart';
import 'package:mirinae_gugu/video/src/widget/button_test.dart';

class Test_3 extends StatelessWidget{
  bool state1 = false;
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text('3단원. 복습 시험', style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Container(
              height: 300,
              child:Image.asset('assets/test_chapter/3_health.png'),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  TestButton(text: '동영상',  color: Colors.blueAccent,icon: Icons.camera_alt,state: state1, onTap: Choice821(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic,state: state1, onTap: Choice22(),), //StartPage()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt,state: state1, onTap: Choice823(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic, state: state1,onTap: Choice24(),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt, state: state1,onTap: Choice825(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic, state: state1,onTap: Choice26(),),
              ],
            ),

          ],
      ),
      appBar: DefaultAppBar(title: '구구절절'),
    ),
    );
  }
}