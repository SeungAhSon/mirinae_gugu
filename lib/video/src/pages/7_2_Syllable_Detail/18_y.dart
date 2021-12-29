import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button_dumy.dart';

class Y extends StatelessWidget{
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
                          child: Text('ㅇ',style: TextStyle(fontSize: 19+size, fontWeight: FontWeight.bold))
                      ),
                      SizedBox(width: 10),
                      Text('발음하기',style: TextStyle(fontSize: 18.0+size)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Image(image: AssetImage('assets/mouth/18_y.png')),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal:150,vertical: 10),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text('발음 방법',style:TextStyle(fontSize: 16+size)),
                  ),
                  Text('비음 : 입을 막고 코로 공기를 내보내면서 내는 소리',style:TextStyle(fontSize: 15+size),textAlign: TextAlign.center,),
                  SizedBox(height: 5),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal:150,vertical: 10),
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Text('발음 동작',style:TextStyle(fontSize: 16+size)),
                  ),
                  Text('여린입천장소리 : 혀의 뒷부분을 입안 뒤쪽에\n붙였다가 떼면서 발음',style:TextStyle(fontSize: 15+size),textAlign: TextAlign.center,),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '아',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '야',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '어',
                          onTap: () async {}
                      ),
                    ],
                  ), //바뱌버
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '여',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '오',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '요',
                          onTap: () async {}
                      ),
                    ],
                  ), //벼부뷰
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '우',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '유',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                          text: '으',
                          onTap: () async {}
                      ),
                    ],
                  ), //보뵤브
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '이',
                          onTap: () async {}
                      ),
                      Dumybutton(),
                      Dumybutton(),
                    ],
                  ), //비
                ]
            )
        )
    );
  }
}