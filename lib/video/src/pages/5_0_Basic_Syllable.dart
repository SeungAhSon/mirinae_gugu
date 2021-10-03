import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/Video_0_02.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';
import 'package:mirinae_gugu/video/src/pages/Video_0_01.dart';



class Syllable extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    WidgetsFlutterBinding.ensureInitialized();
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
                  text: '가',
                  onTap: () async {
                      await Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Video0_01();
                      }));
                  },
                  ),
                LearnLevelButton(
                  text: '나',
                  onTap: () async {
                    await Navigator.push(
                        context, MaterialPageRoute(builder: (context) {
                      return Video0_02();
                      //Level newLevel = await gameBloc.setLevel(index + 1);
                      //Navigator.of(context).push(GamePage.route(newLevel));
                    }));
                  },
                ),
                LearnLevelButton(
                  text: '다',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
              ],
            ), //가나다
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                LearnLevelButton(
                    text: '라',
                    onTap: () async {}
                ),
                LearnLevelButton(
                  text: '마',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
                LearnLevelButton(
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
                    text: '사',
                    onTap: () async {}
                ),
                LearnLevelButton(
                  text: '아',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
                LearnLevelButton(
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
                    text: '차',
                    onTap: () async {}
                ),
                LearnLevelButton(
                  text: '카',
                  onTap: () async {
                    //Level newLevel = await gameBloc.setLevel(index + 1);
                    //Navigator.of(context).push(GamePage.route(newLevel));
                  },
                ),
                LearnLevelButton(
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
                    text: '파',
                    onTap: () async {}
                ),
                LearnLevelButton(
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