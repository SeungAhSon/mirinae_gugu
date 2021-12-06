import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';

class Vocab_Screen_58 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: DefaultAppBar(title: '낱말학습'),
        body: Center(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('  낱말 8단원',style: TextStyle(fontSize: 20.0+size,fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-1',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-2',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-3',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //1~3
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-4',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-5',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-6',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //4~6
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-7',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-8',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-9',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //7~9
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-10',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-11',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-12',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //10~12
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-13',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-14',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-15',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //13~15
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-16',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-17',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-18',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //16~18
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-19',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-20',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-21',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //19~21
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-22',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-23',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-24',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //22~24
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-25',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-26',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-27',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //25~27
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '8-28',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '8-29',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '8-30',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                    ],
                  ), //28~30
                ]
            )
        )
    );
  }
}