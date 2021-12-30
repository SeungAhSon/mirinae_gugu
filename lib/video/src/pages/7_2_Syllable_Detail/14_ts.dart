import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button_dumy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TS extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: DefaultAppBar(title: '조음학습'),
        body: Center(
        child: Scrollbar(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('센입천장소리',style: TextStyle(fontSize: 18.0+size),),
                      SizedBox(width: 10.w),
                      Container(
                          height: 30.h,width: 30.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff7ba6f9),
                            shape: BoxShape.circle,
                          ),
                          child: Text('ㅊ',style: TextStyle(fontSize: 19+size, fontWeight: FontWeight.bold))
                      ),
                      SizedBox(width: 10.w),
                      Text('발음하기',style: TextStyle(fontSize: 18.0+size)),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Image(image: AssetImage('assets/mouth/14_ts.png')),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal:150,vertical: 10),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text('파찰음',style:TextStyle(fontSize: 16+size)),
                  ),
                  Text('폐에서 나오는 공기를 막았다가\n서서히 마찰을 일으켜서 내는 소리',style:TextStyle(fontSize: 15+size),textAlign: TextAlign.center,),
                  SizedBox(height: 5.h),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal:130,vertical: 10),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text('센입천장소리',style:TextStyle(fontSize: 16+size)),
                  ),
                  Text('혓바닥을 입안 앞쪽에 붙였다가 떼면서 발음',style:TextStyle(fontSize: 15+size),textAlign: TextAlign.center,),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '차',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '챠',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '처',
                          onTap: () async {}
                      ),
                    ],
                  ), //바뱌버
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '쳐',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '초',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '쵸',
                          onTap: () async {}
                      ),
                    ],
                  ), //벼부뷰
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '추',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '츄',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '츠',
                          onTap: () async {}
                      ),
                    ],
                  ), //보뵤브
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '치',
                          onTap: () async {}
                      ),
                      Dumybutton(),
                      Dumybutton(),
                    ],
                  ), //비
                ]
            )
        ))
    );
  }
}