import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_2/2_voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_1/1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap12/Quiz_2/2_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap12/Quiz_4/4_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap12/Quiz_6/6_Choice.dart';
import 'package:mirinae_gugu/video/src/widget/button_test.dart';

class Test_12 extends StatelessWidget{
  bool state1 = false;
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 7),
            Text('12단원. 복습 시험', style: TextStyle(fontSize: 20+size, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 7),
            Container(
              height: MediaQuery.of(context).size.height*0.35,
              child:Image.asset('assets/test_chapter/12_family.png'),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                  TestButton(text: '동영상', icon: Icons.camera_alt, color: Colors.blueAccent,state: state1, onTap: Choice821(),),
                TestButton(text: '목소리', icon: Icons.mic,  color: Colors.blueAccent, state: state1,onTap: Choice122(),), //StartPage()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', icon: Icons.camera_alt, color: Colors.blueAccent, state: state1,onTap: Choice823(),),
                TestButton(text: '목소리', icon: Icons.mic,  color: Colors.blueAccent, state: state1,onTap: Choice124(),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상', icon: Icons.camera_alt, state: state1,color: Colors.blueAccent, onTap: Choice825(),),
                TestButton(text: '목소리', icon: Icons.mic,  state: state1,color: Colors.blueAccent,onTap: Choice126(),),
              ],
            ),

          ],
      ),
      appBar: DefaultAppBar(title: '구구절절'),
    ),
    );
  }
}