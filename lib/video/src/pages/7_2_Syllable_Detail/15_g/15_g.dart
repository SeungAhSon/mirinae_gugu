import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button_dumy.dart';

import '15_g_video_body.dart';

class G extends StatelessWidget{
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
                      Text('여린입천장소리',style: TextStyle(fontSize: 18.0+size),),
                      SizedBox(width: 10),
                      Container(
                          height: 30,width: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Color(0xff7ba6f9),
                            shape: BoxShape.circle,
                          ),
                          child: Text('ㄱ',style: TextStyle(fontSize: 19+size, fontWeight: FontWeight.bold))
                      ),
                      SizedBox(width: 10),
                      Text('발음하기',style: TextStyle(fontSize: 18.0+size)),
                    ],
                  ),
                  SizedBox(height: 5),
                  Image(image: AssetImage('assets/mouth/15_g.png')),
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
                  Text('파열음 : 폐에서 나오는 공기를 막았다가 내는 소리',style:TextStyle(fontSize: 15+size),textAlign: TextAlign.center,),
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
                          text: '가',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
                              index:1,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '갸',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
                              index:2,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '거',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
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
                          text: '겨',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
                              index:4,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '고',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
                              index:5,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '교',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
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
                          text: '구',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
                              index:7,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '규',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
                              index:8,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                          text: '그',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
                              index:9,
                            ),));
                          }
                      ),
                    ],
                  ), //보뵤브
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '기',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body_15(
                              index:10,
                            ),));
                          },

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