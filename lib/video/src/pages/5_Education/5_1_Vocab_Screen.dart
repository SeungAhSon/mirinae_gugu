import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/5_components/5_video_body.dart';

import 'package:mirinae_gugu/video/src/widget/learn_level_button_f.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../1_Loading.dart';
import '../3_home.dart';
import '../4_Word_Main.dart';
import '../Video_0_02.dart';
import '../favorite_global.dart';

class Vocab_Screen_51 extends StatefulWidget {
  @override
  _Vocab_Screen_51 createState() => _Vocab_Screen_51();
}

class _Vocab_Screen_51 extends State<Vocab_Screen_51>{
  List<bool> FavoriteButtons = <bool>[false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
  List<String> FavoriteButton = ["false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false","false"];
  @override



  Future<void> loadFavorite() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState((){
      FavoriteButtons = (prefs.getStringList("favorite15") ?? <bool>[]).map((value) => value == 'true').toList();
    });
    FavoriteButtons = (FavoriteButton).map((value) => value == 'true').toList();
    FavoriteButton = prefs.getStringList("favorite15")!;
  }

  void main() {
    MaterialApp(
      // initialRoute 설정. home이 아닌 초기 라우트로 설정
      // '/'은 앱의 첫 라우트(root 라우트)를 의미함
      initialRoute: '/',
      // 라우트들을 등록
      routes: {
        '/': (context) => Home(),  // 초기 라우트로 FirstScreen을 설정
        '/Vocab_Screen_51': (context) => Vocab_Screen_51(), // '/second'란 경로로 SecondScrrent을 설정정
      },
    );
  }
  @override
  void initState() {
    super.initState();
    print("gd");
  }
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    loadFavorite();



    return Scaffold(
        appBar: DefaultAppBar(title: '낱말학습'),
        body: Center(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  SizedBox(height: 5),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('  낱말 1단원',style: TextStyle(fontSize: 20.0+size,fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          color: FavoriteButtons[1] ? Colors.orange : Color(0xff7ba6f9),
                          text: '1-1',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                              index:1,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[2] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-2',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                              index: 2,
                          ),));
                              },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[3] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-3',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 3,
                          ),));
                        },
                              ),
                            ],
                          ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                        color: FavoriteButtons[4] ? Colors.orange : Color(0xff7ba6f9),
                          text: '1-4',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 4,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[5] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-5',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 5,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[6] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-6',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 6,
                          ),));
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                        color: FavoriteButtons[7] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-7',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 7,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[8] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-8',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 8,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[9] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-9',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 9,
                          ),));
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                        color: FavoriteButtons[10] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-10',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 10,
                          ),));
                        },
                      ),

                      LearnLevelButton(
                        color: FavoriteButtons[11] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-11',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 11,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[12] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-12',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 12,
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                          ),));
                        },
                      ),
                    ],
                  ), //10~12
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                        color: FavoriteButtons[13] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-13',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 13,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[14] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-14',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 14,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[15] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-15',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 15,
                            //Level newLevel = await gameBloc.setLevel(index + 1);
                            //Navigator.of(context).push(GamePage.route(newLevel));
                          ),));
                        },
                      ),
                    ],
                  ),  //13~15
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                        color: FavoriteButtons[16] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-16',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 16,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[17] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-17',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 17,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[18] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-18',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 18,
                            //Level newLevel = await gameBloc.setLevel(index + 1);
                            //Navigator.of(context).push(GamePage.route(newLevel));
                          ),));
                        },
                      ),
                    ],
                  ),  //16~18
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                        color: FavoriteButtons[19] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-19',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 19,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[20] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-20',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 20,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[21] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-21',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 21,
                            //Level newLevel = await gameBloc.setLevel(index + 1);
                            //Navigator.of(context).push(GamePage.route(newLevel));
                          ),));
                        },
                      ),
                    ],
                  ),  //19~21
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                        color: FavoriteButtons[22] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-22',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 22,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[23] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-23',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 23,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[24] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-24',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 24,
                            //Level newLevel = await gameBloc.setLevel(index + 1);
                            //Navigator.of(context).push(GamePage.route(newLevel));
                          ),));
                        },
                      ),
                    ],
                  ), //22~24
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                        color: FavoriteButtons[25] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-25',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 25,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[26] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-26',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 26,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[27] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-27',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 27,
                            //Level newLevel = await gameBloc.setLevel(index + 1);
                            //Navigator.of(context).push(GamePage.route(newLevel));
                          ),));
                        },
                      ),
                    ],
                  ),  //25~27
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                  color: FavoriteButtons[28] ? Colors.orange : Color(0xff7ba6f9),
          text: '1-28',
          onTap: () async {
            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
              index: 28,
            ),));
          },
        ),
                      LearnLevelButton(
                        color: FavoriteButtons[29] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-29',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 29,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        color: FavoriteButtons[30] ? Colors.orange : Color(0xff7ba6f9),
                        text: '1-30',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 30,
                          ),));
                        },
                      ),
      ],

                    //28~30

            )
            ]
        )
        )
    );

  }

}