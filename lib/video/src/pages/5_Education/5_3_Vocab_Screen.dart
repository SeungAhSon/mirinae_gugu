import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';

class Vocab_Screen_53 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: DefaultAppBar(title: '낱말학습'),
        body: Center(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  SizedBox(height: 5),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('  낱말 3단원',style: TextStyle(fontSize: 20.0+size,fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '3-1',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-2',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-3',
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
                          text: '3-4',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-5',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-6',
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
                          text: '3-7',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-8',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-9',
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
                          text: '3-10',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-11',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-12',
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
                          text: '3-13',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-14',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-15',
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
                          text: '3-16',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-17',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-18',
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
                          text: '3-19',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-20',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-21',
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
                          text: '3-22',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-23',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-24',
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
                          text: '3-25',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-26',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-27',
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
                          text: '3-28',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '3-29',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '3-30',
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