import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_2/2_voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_1/1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_2/2_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_4/4_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_6/6_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_Choice.dart';
import 'package:mirinae_gugu/video/src/widget/button_test.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Test_1 extends StatefulWidget {
  const Test_1({
  Key ?key,
  }) : super(key: key);
  @override
  _Test_1 createState() => _Test_1();
  }
  class _Test_1 extends State<Test_1>{


bool state1 = false;
void loadnotification() async{
  SharedPreferences s = await SharedPreferences.getInstance();
  setState(() {
      state1 = s.getBool("11111")!;
  });
}

@override
void initState() {
  super.initState();

}
@override
void dispose() {
  super.dispose();

}

  @override
  Widget build(BuildContext context){
    loadnotification();
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text('1단원. 복습 시험', style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Container(
              height: 300,
              child:Image.asset('assets/test_chapter/1_newyear.png'),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상1',color: Colors.blueAccent,  icon: Icons.camera_alt, state: state1,
                  onTap: Choice821(),),
                TestButton(text: '목소리1', color: Colors.blueAccent, icon: Icons.mic,state: state1,
                  onTap: Choice822()), //StartPage()
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                TestButton(text: '동영상2',color: Color(0xff7ba6f9), icon: Icons.camera_alt,state: state1, onTap: Choice823()),
                TestButton(text: '목소리2',color: Colors.blueAccent,  icon: Icons.mic,state: state1, onTap: Choice824(),),
              ],


            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TestButton(text: '동영상3',color: Colors.blueAccent,  icon: Icons.camera_alt,state: state1, onTap: Choice825(),),
                TestButton(text: '목소리3',color: Colors.blueAccent,  icon: Icons.mic, state: state1,onTap: Choice826(),),
              ],
            ),

          ],
      ),
      appBar: DefaultAppBar(title: '구구절절'),
    ),
    );
  }
}