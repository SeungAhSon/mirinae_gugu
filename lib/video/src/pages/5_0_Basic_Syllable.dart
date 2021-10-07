import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/Video_0_02.dart';
import 'package:mirinae_gugu/video/src/pages/Video_0_03.dart';
import 'package:mirinae_gugu/video/src/pages/Video_0_04.dart';

import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';
import 'package:mirinae_gugu/video/src/pages/Video_0_01.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'favorite_global.dart';



List<CameraDescription> cameras = List.empty(growable: true);//카메라
class Syllable extends StatefulWidget {

  @override
  _Syllable createState() => _Syllable();
}

class _Syllable extends State<Syllable>{

  @override
  void loadFavorite() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      favoriteButton_0_01 = prefs.getBool('_favoriteButton_0_01')!;

    });
  }


  @override
  Widget build(BuildContext context){
    WidgetsFlutterBinding.ensureInitialized();
    loadFavorite();
    return Scaffold(
      appBar: AppBar(
          title: Text('구구절절', style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
          elevation: 0.0
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text('  기본 음절',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
            ),
            SizedBox(height: 10),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
                LearnLevelButton(

                  color: favoriteButton_0_01 ? Colors.orange : Color(0xff7ba6f9),
                  text: '가',
                  onTap: () async {

                      await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                        return Video0_01();
                      }));
                  },
                  ),
                LearnLevelButton(
                  color: favoriteButton_0_02 ? Colors.orange : Color(0xff7ba6f9),
                  text: '나',
                  onTap: () async {
                    await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return Video0_02();
                      //Level newLevel = await gameBloc.setLevel(index + 1);
                      //Navigator.of(context).push(GamePage.route(newLevel));
                    }));
                  },
                ),
                LearnLevelButton(
                  color: favoriteButton_0_03 ? Colors.orange : Color(0xff7ba6f9),
                  text: '다',
                  onTap: () async {
                    await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return Video0_03();
                      //Level newLevel = await gameBloc.setLevel(index + 1);
                      //Navigator.of(context).push(GamePage.route(newLevel));
                    }));
                  },
                ),
              ],
            ), //가나다
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                LearnLevelButton(
                  color: favoriteButton_0_04 ? Colors.orange : Color(0xff7ba6f9),
                  text: '라',
                  onTap: () async {
                    await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return Video0_04();
                      //Level newLevel = await gameBloc.setLevel(index + 1);
                      //Navigator.of(context).push(GamePage.route(newLevel));
                    }));
                  },
                ),
                LearnLevelButton(
                  color:Color(0xff7ba6f9).withOpacity(1),
                  text: '마',
                  onTap: () async {
                    print(favoriteButton_0_01);

                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
                LearnLevelButton(
                  color:Color(0xff7ba6f9).withOpacity(1),
                  text: '바',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
              ],
            ), //라마바
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                LearnLevelButton(
                    color:Color(0xff7ba6f9).withOpacity(1),
                    text: '사',
                    onTap: () async {}
                ),
                LearnLevelButton(
                  color:Color(0xff7ba6f9).withOpacity(1),
                  text: '아',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
                LearnLevelButton(
                  color:Color(0xff7ba6f9).withOpacity(1),
                  text: '자',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
              ],
            ), //사아자
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                LearnLevelButton(
                    color:Color(0xff7ba6f9).withOpacity(1),
                    text: '차',
                    onTap: () async {}
                ),
                LearnLevelButton(
                  color:Color(0xff7ba6f9).withOpacity(1),
                  text: '카',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
                LearnLevelButton(
                  color:Color(0xff7ba6f9).withOpacity(1),
                  text: '타',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
              ],
            ), //차카타
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceAround,
              children: <Widget>[
                LearnLevelButton(
                    color:Color(0xff7ba6f9).withOpacity(1),
                    text: '파',
                    onTap: () async {}
                ),
                LearnLevelButton(
                  color:Color(0xff7ba6f9).withOpacity(1),
                  text: '하',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
                Icon(Icons.home, size: 120,
                    color: Colors.black.withOpacity(0)),

              ],
            ), //파하
          ]
        )
      )
    );
  }







}