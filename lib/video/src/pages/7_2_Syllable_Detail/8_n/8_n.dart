import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/7_2_Syllable_Detail/8_n/8_n_video_body.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';

class N extends StatelessWidget{
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
                      Text('잇몸소리',style: TextStyle(fontSize: 18.0+size),),
                      SizedBox(width: 10),
                      Container(
                          height: 30,width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff7ba6f9),
                            shape: BoxShape.circle,
                          ),
                          child: Text('ㄴ',style: TextStyle(fontSize: 19+size, fontWeight: FontWeight.bold))
                      ),
                      SizedBox(width: 10),
                      Text('발음하기',style: TextStyle(fontSize: 18.0+size)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Image(image: AssetImage('assets/mouth/8_n.png')),
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
                  Text('잇몸소리 : 혀끝을 앞니 뒤에 살짝 붙였다 떼며 발음',style:TextStyle(fontSize: 15+size),textAlign: TextAlign.center,),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '나',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:1,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '냐',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:2,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '너',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:3,
                            ),));
                          }
                      ),
                    ],
                  ), //바뱌버
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '녀',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:4,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '노',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:5,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '뇨',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:6,
                            ),));
                          }
                      ),
                    ],
                  ), //벼부뷰
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '누',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:7,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '뉴',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:8,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '느',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:9,
                            ),));

                          }
                      ),
                    ],
                  ), //보뵤브
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '니',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_8(
                              index:10,
                            ),));
                          }
                      ),
                    ],
                  ), //비
                ]
            )
        )
    );
  }
}