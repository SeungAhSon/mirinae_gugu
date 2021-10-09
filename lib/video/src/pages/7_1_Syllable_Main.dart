import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/app.dart';
import 'package:mirinae_gugu/video/src/pages/7_2_Syllable_Detail/8_n.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';
import 'package:mirinae_gugu/video/src/pages/7_2_Syllable_Detail/0_Out.dart';

import '7_2_Syllable_Detail/10_ss.dart';
import '7_2_Syllable_Detail/11_l.dart';
import '7_2_Syllable_Detail/12_j.dart';
import '7_2_Syllable_Detail/13_jj.dart';
import '7_2_Syllable_Detail/14_ts.dart';
import '7_2_Syllable_Detail/15_g.dart';
import '7_2_Syllable_Detail/16_gg.dart';
import '7_2_Syllable_Detail/17_k.dart';
import '7_2_Syllable_Detail/18_y.dart';
import '7_2_Syllable_Detail/19_h.dart';
import '7_2_Syllable_Detail/1_b.dart';
import '7_2_Syllable_Detail/2_bb.dart';
import '7_2_Syllable_Detail/3_p.dart';
import '7_2_Syllable_Detail/4_m.dart';
import '7_2_Syllable_Detail/5_d.dart';
import '7_2_Syllable_Detail/6_dd.dart';
import '7_2_Syllable_Detail/7_t.dart';
import '7_2_Syllable_Detail/9_s.dart';

class Syllable_pages extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image(
              image: AssetImage("assets/oral_structure.png"),
              fit: BoxFit.fitWidth
          ),
          Positioned(
              top:385, left:17,
              child: FlatButton(
                child: Text('ㅂ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => B()),);
                },
              )
          ),//ㅂ
          Positioned(
              top:385, left:85,
              child: FlatButton(
                child: Text('ㄷ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => D()));
                },
              )
          ),//ㄷ
          Positioned(
              top:385, left:155,
              child: FlatButton(
                child: Text('ㅅ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => S()));
                },
              )
          ),//ㅅ
          Positioned(
              top:385, left:223,
              child: FlatButton(
                child: Text('ㅈ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => J()));
                },
              )
          ),//ㅈ
          Positioned(
              top:385, left:290,
              child: FlatButton(
                child: Text('ㄱ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => G()));
                },
              )
          ),//ㄱ

          Positioned(
              top:435, left:17,
              child: FlatButton(
                child: Text('ㅃ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BB()),);
                },
              )
          ),//ㅃ
          Positioned(
              top:435, left:85,
              child: FlatButton(
                child: Text('ㄸ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DD()));
                },
              )
          ),//ㄸ
          Positioned(
              top:435, left:155,
              child: FlatButton(
                child: Text('ㅆ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SS()));
                },
              )
          ),//ㅆ
          Positioned(
              top:435, left:223,
              child: FlatButton(
                child: Text('ㅉ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => JJ()));
                },
              )
          ),//ㅉ
          Positioned(
              top:435, left:290,
              child: FlatButton(
                child: Text('ㄲ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => GG()));
                },
              )
          ),//ㄲ

          Positioned(
              top:485, left:17,
              child: FlatButton(
                child: Text('ㅍ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => P()));
                },
              )
          ),//ㅍ
          Positioned(
              top:485, left:85,
              child: FlatButton(
                child: Text('ㅌ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => T()));
                },
              )
          ),//ㅌ
          Positioned(
              top:485, left:223,
              child: FlatButton(
                child: Text('ㅊ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TS()));
                },
              )
          ),//ㅊ
          Positioned(
              top:485, left:290,
              child: FlatButton(
                child: Text('ㅋ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => K()));
                },
              )
          ),//ㅋ

          Positioned(
              top:535, left:17,
              child: FlatButton(
                child: Text('ㅁ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => M()));
                },
              )
          ),//ㅁ
          Positioned(
              top:535, left:85,
              child: FlatButton(
                child: Text('ㄴ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => N()));
                },
              )
          ),//ㄴ
          Positioned(
              top:535, left:155,
              child: FlatButton(
                child: Text('ㄹ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => L()));},
              )
          ),//ㄹ
          Positioned(
              top:535, left:290,
              child: FlatButton(
                child: Text('ㅇ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Y()));
                },
              )
          ),//ㅇ

          Positioned(
              top:220, left:295,
              child: FlatButton(
                child: Text('ㅎ', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                shape: CircleBorder(),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => H()));
                },
              )
          ),//ㅎ
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('조음 학습',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
          iconSize: 22,
          icon: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}