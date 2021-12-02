import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/components/voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_2_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_3_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_4_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_5_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/8_2_6_Choice.dart';
import 'package:mirinae_gugu/video/src/widget/button_test.dart';

class Test_12 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text('12단원. 복습 시험', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Container(
              height: 300,
              child:Image.asset('assets/test/12_family.png'),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  TestButton(text: '동영상', icon: Icons.camera_alt, onTap: Choice821(),),
                TestButton(text: '목소리', icon: Icons.mic, onTap: Choice822(),), //StartPage()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', icon: Icons.camera_alt, onTap: Choice823(),),
                TestButton(text: '목소리', icon: Icons.mic, onTap: Choice824(),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', icon: Icons.camera_alt, onTap: Choice825(),),
                TestButton(text: '목소리', icon: Icons.mic, onTap: Choice826(),),
              ],
            ),

          ],
      ),
      appBar: DefaultAppBar(title: '구구절절'),
    ),
    );
  }
}