import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';

class GG extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: DefaultAppBar(title: '조음학습'),
        body: Center(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('여린입천장소리',style: TextStyle(fontSize: 18.0+size),),
                      SizedBox(width: 10),
                      Container(
                          height: 30,width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff7ba6f9),
                            shape: BoxShape.circle,
                          ),
                          child: Text('ㄲ',style: TextStyle(fontSize: 19+size, fontWeight: FontWeight.bold))
                      ),
                      SizedBox(width: 10),
                      Text('발음하기',style: TextStyle(fontSize: 18.0+size)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Image(image: AssetImage('assets/mouth/14_ts.png')),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal:150,vertical: 10),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text('발음 방법'),
                  ),
                  Text('파열음 : 폐에서 나오는 공기를 막았다가 내는 소리',textAlign: TextAlign.center,),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal:150,vertical: 10),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text('발음 동작'),
                  ),
                  Text('여린입천장소리 : 혀의 뒷부분을 입안 뒤쪽에 붙였다가 떼면서 발음',textAlign: TextAlign.center,),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '까',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '꺄',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '꺼',
                          onTap: () async {}
                      ),
                    ],
                  ), //바뱌버
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '껴',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '꼬',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '꾜',
                          onTap: () async {}
                      ),
                    ],
                  ), //벼부뷰
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '꾸',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '뀨',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '끄',
                          onTap: () async {}
                      ),
                    ],
                  ), //보뵤브
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '끼',
                          onTap: () async {}
                      ),
                    ],
                  ), //비
                ]
            )
        )
    );
  }
}