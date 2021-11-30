import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/pages/9_setting.dart';
import 'package:mirinae_gugu/video/src/components/voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/5_Education/5_12_Vocab_Screen.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/8_2_1_Choice.dart';
import 'package:mirinae_gugu/video/src/widget/unit_widget.dart';
import 'package:mirinae_gugu/video/src/pages/7_1_Syllable_Main.dart';
import 'package:mirinae_gugu/pages/5_Education/5_0_Export.dart';

class Test_1 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5),
            Text('1단원. 복습 시험', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Container(
              height: 300,
              child:Image.asset('assets/test/1_newyear.png'),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  height: 120,
                  color: Color(0xffE4EDFF),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Choice821()),);
                  },
                  child: Text('동영상',style:TextStyle(fontSize:18, color: Colors.black54)),
                ),
                FlatButton(
                  height: 120,
                  color: Color(0xffE4EDFF),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StartPage()),);
                  },
                  child: Container(
                    child: Text('목소리',style:TextStyle(fontSize:18, color: Colors.black54)),
                  ),
                ),//새학년
              ],
            )

          ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('구구절절',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),),
        centerTitle: true,
      ),
    ),
    );
  }
}