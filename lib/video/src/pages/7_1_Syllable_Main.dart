import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/app.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/7_2_Syllable_Detail/8_n.dart';
import 'package:mirinae_gugu/video/src/widget/button_Syllable.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';
import 'package:mirinae_gugu/video/src/pages/7_2_Syllable_Detail/0_Out.dart';

class Syllable_pages extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var height2 = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(

        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Image.asset("assets/oral_structure 2.png",fit: BoxFit.fill,),
          ),
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height -  MediaQuery.of(context).padding.top) * 0.525, left: (MediaQuery.of(context).size.width)*0.042),
            child: ButtonSyllable(text: 'ㅂ', onTap: B()),
          ),//ㅂ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.525, left: (MediaQuery.of(context).size.width)*0.215),
            child: ButtonSyllable(text: 'ㄷ', onTap: D()),
          ),//ㄷ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.525, left: (MediaQuery.of(context).size.width)*0.39),
            child: ButtonSyllable(text: 'ㅅ', onTap: S()),
          ),//ㅅ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.525, left: (MediaQuery.of(context).size.width)*0.565),
            child: ButtonSyllable(text: 'ㅈ', onTap: J()),
          ),//ㅈ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.525, left: (MediaQuery.of(context).size.width)*0.74),
            child:ButtonSyllable(text: 'ㄱ', onTap: G()),
          ),//ㄱ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.595, left: (MediaQuery.of(context).size.width)*0.042),
            child: ButtonSyllable(text: 'ㅃ', onTap: BB()),
          ),//ㅃ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.595, left: (MediaQuery.of(context).size.width)*0.215),
            child: ButtonSyllable(text: 'ㄸ', onTap: DD()),
          ),//ㄸ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.595, left: (MediaQuery.of(context).size.width)*0.39),
            child: ButtonSyllable(text: 'ㅆ', onTap: SS()),
          ),//ㅆ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.595,
                left: (MediaQuery.of(context).size.width)*0.565),
            child: ButtonSyllable(text: 'ㅉ', onTap: JJ()),
          ),//ㅉ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.595, left: (MediaQuery.of(context).size.width)*0.74),
            child:ButtonSyllable(text: 'ㄲ', onTap: GG()), //ㄲ
          ),//ㄲ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.67,
                left: (MediaQuery.of(context).size.width)*0.042),
            child: ButtonSyllable(text: 'ㅍ', onTap: P()),
          ),//ㅍ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.67, left: (MediaQuery.of(context).size.width)*0.215),
            child: ButtonSyllable(text: 'ㅌ', onTap: T()),
          ),//ㅌ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.67, left: (MediaQuery.of(context).size.width)*0.565),
            child: ButtonSyllable(text: 'ㅊ', onTap: TS()),
          ),//ㅊ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.67, left: (MediaQuery.of(context).size.width)*0.74),
            child:ButtonSyllable(text: 'ㅋ', onTap: K()),
          ),
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.74, left: (MediaQuery.of(context).size.width)*0.042),
            child: ButtonSyllable(text: 'ㅁ', onTap: M()),
          ),//ㅁ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.74, left: (MediaQuery.of(context).size.width)*0.215),
            child: ButtonSyllable(text: 'ㄴ', onTap: N()),
          ),//ㄴ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.74, left: (MediaQuery.of(context).size.width)*0.39),
            child: ButtonSyllable(text: 'ㄹ', onTap: L()),
          ),//ㄹ
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.74,
                left: (MediaQuery.of(context).size.width)*0.74),
            child:ButtonSyllable(text: 'ㅇ', onTap: Y()), //ㅇ
          ),
          Padding(
            padding: EdgeInsets.only(top:(MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.38, left: (MediaQuery.of(context).size.width)*0.784),
            child: ButtonSyllable(text: 'ㅎ', onTap: H()), //ㅎ
          ),
        ],
      ),
      appBar: DefaultAppBar(title: '조음학습'),
    );
  }
}