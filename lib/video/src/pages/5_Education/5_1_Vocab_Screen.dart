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
      FavoriteButtons = (prefs.getStringList("favorite_1_") ?? <bool>[]).map((value) => value == 'true').toList();
    });

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
          child: Scrollbar(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  SizedBox(height: 5),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('  낱말 1단원 (30)',style: TextStyle(fontSize: 20.0+size,fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          state: FavoriteButtons[1],
                          text: FavoriteButtons[1] ? '1-1 ✓' : '1-1',
                          onTap: () async {
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                              index:1,
                            ),));
                          }
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[2],
                        text: FavoriteButtons[2] ? '1-2 ✓' : '1-2',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                              index: 2,
                          ),));
                              },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[3],
                        text: FavoriteButtons[3] ? '1-3 ✓' : '1-3',
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
                        state: FavoriteButtons[4],
                        text: FavoriteButtons[4] ? '1-4 ✓' : '1-4',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 4,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[5],
                        text: FavoriteButtons[5] ? '1-5 ✓' : '1-5',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 5,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[6],
                        text: FavoriteButtons[6] ? '1-6 ✓' : '1-6',
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
                        state: FavoriteButtons[7],
                        text: FavoriteButtons[7] ? '1-7 ✓' : '1-7',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 7,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[8],
                        text: FavoriteButtons[8] ? '1-8 ✓' : '1-8',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 8,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[9],
                        text: FavoriteButtons[9] ? '1-9 ✓' : '1-9',
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
                        state: FavoriteButtons[10],
                        text: FavoriteButtons[10] ? '1-10 ✓' : '1-10',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 10,
                          ),));
                        },
                      ),

                      LearnLevelButton(
                        state: FavoriteButtons[11],
                        text: FavoriteButtons[11] ? '1-11 ✓' : '1-11',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 11,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[12],
                        text: FavoriteButtons[12] ? '1-12 ✓' : '1-12',
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
                        state: FavoriteButtons[13],
                        text: FavoriteButtons[13] ? '1-13 ✓' : '1-13',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 13,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[14],
                        text: FavoriteButtons[14] ? '1-14 ✓' : '1-14',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 14,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[15],
                        text: FavoriteButtons[15] ? '1-15 ✓' : '1-15',
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
                        state: FavoriteButtons[16],
                        text: FavoriteButtons[16] ? '1-16 ✓' : '1-16',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 16,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[17],
                        text: FavoriteButtons[17] ? '1-17 ✓' : '1-17',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 17,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[18],
                        text: FavoriteButtons[18] ? '1-18 ✓' : '1-18',
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
                        state: FavoriteButtons[19],
                        text: FavoriteButtons[19] ? '1-19 ✓' : '1-19',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 19,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[20],
                        text: FavoriteButtons[20] ? '1-20 ✓' : '1-20',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 20,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[21],
                        text: FavoriteButtons[21] ? '1-21 ✓' : '1-21',
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
                        state: FavoriteButtons[22],
                        text: FavoriteButtons[22] ? '1-22 ✓' : '1-22',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 22,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[23],
                        text: FavoriteButtons[23] ? '1-23 ✓' : '1-23',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 23,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[24],
                        text: FavoriteButtons[24] ? '1-24 ✓' : '1-24',
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
                        state: FavoriteButtons[25],
                        text: FavoriteButtons[25] ? '1-25 ✓' : '1-25',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 25,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[26],
                        text: FavoriteButtons[26] ? '1-26 ✓' : '1-26',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 26,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[27],
                        text: FavoriteButtons[27] ? '1-27 ✓' : '1-27',
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
                        state: FavoriteButtons[28],
                        text: FavoriteButtons[28] ? '1-28 ✓' : '1-28',
          onTap: () async {
            await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
              index: 28,
            ),));
          },
        ),
                      LearnLevelButton(
                        state: FavoriteButtons[29],
                        text: FavoriteButtons[29] ? '1-29 ✓' : '1-29',
                        onTap: () async {
                          await Navigator.push(context, MaterialPageRoute(builder: (context) => video_Body(
                            index: 29,
                          ),));
                        },
                      ),
                      LearnLevelButton(
                        state: FavoriteButtons[30],
                        text: FavoriteButtons[30] ? '1-30 ✓' : '1-30',
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
        )
    );

  }

}