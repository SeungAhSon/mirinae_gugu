import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';

class D extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text('조음 학습', style: TextStyle(color:Colors.blueAccent,fontWeight: FontWeight.bold)),
          centerTitle: true,
          //elevation: 0.0
        ),
        body: Center(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('잇몸소리',style: TextStyle(fontSize: 18.0),),
                      SizedBox(width: 10),
                      Container(
                          height: 30,width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff7ba6f9),
                            shape: BoxShape.circle,
                          ),
                          child: Text('ㄷ',style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold))
                      ),
                      SizedBox(width: 10),
                      Text('발음하기',style: TextStyle(fontSize: 18.0)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Image(image: AssetImage('assets/mouth/5_d.png')),
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
                  Text('잇몸소리 : 혀끝을 앞니 뒤에 살짝 붙였다 떼며 발음',textAlign: TextAlign.center,),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '다',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '댜',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '더',
                          onTap: () async {}
                      ),
                    ],
                  ), //바뱌버
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '뎌',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '도',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '됴',
                          onTap: () async {}
                      ),
                    ],
                  ), //벼부뷰
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '두',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '듀',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '드',
                          onTap: () async {}
                      ),
                    ],
                  ), //보뵤브
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '디',
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