import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/components/voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_2_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_3_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_4_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_5_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_6_Choice.dart';
import 'package:mirinae_gugu/video/src/widget/button_test.dart';

class Test_4 extends StatelessWidget{
  bool state1 = false;
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text('4단원. 복습 시험', style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Container(
              height: 300,
              child:Image.asset('assets/test/4_animal.png'),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt, state: state1,onTap: Choice821(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic,state: state1, onTap: Choice822(),), //StartPage()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt, state: state1,onTap: Choice823(),),
                TestButton(text: '목소리',  color: Colors.blueAccent,icon: Icons.mic,state: state1, onTap: Choice824(),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', color: Colors.blueAccent, icon: Icons.camera_alt,state: state1, onTap: Choice825(),),
                TestButton(text: '목소리', color: Colors.blueAccent, icon: Icons.mic, state: state1,onTap: Choice826(),),
              ],
            ),

          ],
      ),
      appBar: DefaultAppBar(title: '구구절절'),
    ),
    );
  }
}