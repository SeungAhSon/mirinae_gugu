import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/components/voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/8_2_1_Choice.dart';

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
      appBar: DefaultAppBar(title: '구구절절'),
    ),
    );
  }
}