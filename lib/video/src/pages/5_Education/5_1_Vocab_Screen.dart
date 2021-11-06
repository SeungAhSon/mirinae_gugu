import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/5_components/Video_0_01.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button_f.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../3_home.dart';
import '../4_Word_Main.dart';
import '../Video_0_02.dart';
import '../favorite_global.dart';


List<CameraDescription> cameras = List.empty(growable: true);//

class Vocab_Screen_51 extends StatefulWidget {



  @override
  _Vocab_Screen_51 createState() => _Vocab_Screen_51();
}

class _Vocab_Screen_51 extends State<Vocab_Screen_51>{




bool favoriteButton_0_01_02 = false;
bool favoriteButton_0_01_03 = false;
bool favoriteButton_0_01_04 = false;
bool favoriteButton_0_01_05 = false;
bool favoriteButton_0_01_06 = false;
bool favoriteButton_0_01_07 = false;
bool favoriteButton_0_01_08 = false;
bool favoriteButton_0_01_09 = false;
bool favoriteButton_0_01_10 = false;
bool favoriteButton_0_01_11 = false;
bool favoriteButton_0_01_12 = false;
bool favoriteButton_0_01_13 = false;
bool favoriteButton_0_01_14 = false;
bool favoriteButton_0_01_15 = false;
bool favoriteButton_0_01_16 = false;
bool favoriteButton_0_01_17 = false;
bool favoriteButton_0_01_18 = false;
bool favoriteButton_0_01_19 = false;
bool favoriteButton_0_01_20 = false;
bool favoriteButton_0_01_21 = false;
bool favoriteButton_0_01_22 = false;
bool favoriteButton_0_01_23 = false;
bool favoriteButton_0_01_24 = false;
bool favoriteButton_0_01_25 = false;
bool favoriteButton_0_01_26 = false;
bool favoriteButton_0_01_27 = false;
bool favoriteButton_0_01_28 = false;
bool favoriteButton_0_01_29 = false;
bool favoriteButton_0_01_30 = false;


List<bool> FavoriteButtons = [
  false,false,false,false,false,false,false,false,false,false,
  false,false,false,false,false,false,false,false,false,false,
  false,false,false,false,false,false,false,false,false,false
];

List<bool> VideoId = [
  false,
];


  @override
  void loadFavorite() async{
    print(FavoriteButtons[0]);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      FavoriteButtons[0] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[1] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[2] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[3] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[4] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[5] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[6] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[7] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[8] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[9] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[10] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[11] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[12] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[13] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[14] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[15] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[16] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[17] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[18] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[19] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[20] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[21] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[22] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[23] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[24] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[25] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[26] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[27] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[28] = prefs.getBool('_favoriteButton_0_01_01')!;
      FavoriteButtons[29] = prefs.getBool('_favoriteButton_0_01_01')!;



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
  Widget build(BuildContext context){

    loadFavorite();
    return Scaffold(
        appBar: AppBar(
          title: Text('구구절절', style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          //elevation: 0.0
        ),
        body: Center(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('  낱말 1단원',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          color: FavoriteButtons[0] ? Colors.orange : Color(0xff7ba6f9),
                          text: '1-1',
                          onTap: () async {
                            await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Video0_01(
                                YoutubeID: 'asfasdf23',
                                favorite:FavoriteButtons[0],
                                favorite2: '_favoriteButton_0_01_01', text1: '', back: '', navi: null,
                            ),));
                          }
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_02 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-2',
                  //       onTap: () async {
                  //             },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_03 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-3',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //1~3
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_04 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-4',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_05 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-5',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_06 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-6',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //4~6
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_07 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-7',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_08 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-8',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_09 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-9',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //7~9
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_10 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-10',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_11 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-11',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_12 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-12',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //10~12
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_13 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-13',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_14 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-14',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_15 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-15',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //13~15
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_16 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-16',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_17 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-17',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_18 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-18',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //16~18
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_19 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-19',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_20 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-20',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_21 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-21',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //19~21
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_22 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-22',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_23 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-23',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_24 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-24',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //22~24
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_25 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-25',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_26 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-26',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_27 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-27',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //   ],
                  // ), //25~27
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: <Widget>[
                  //     LearnLevelButton(
                  //         color: favoriteButton_0_01_28 ? Colors.orange : Color(0xff7ba6f9),
                  //         text: '1-28',
                  //         onTap: () async {}
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_29 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-29',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                  //     ),
                  //     LearnLevelButton(
                  //       color: favoriteButton_0_01_30 ? Colors.orange : Color(0xff7ba6f9),
                  //       text: '1-30',
                  //       onTap: () async {
                  //         //Level newLevel = await gameBloc.setLevel(index + 1);
                  //         //Navigator.of(context).push(GamePage.route(newLevel));
                  //       },
                       ),
                    ],
                  ), //28~30
                ]
            )
        )
    );
  }
}