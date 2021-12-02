import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';

class Vocab_Screen_55 extends StatelessWidget{
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
                      child: Text('  낱말 5단원',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '5-1',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-2',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-3',
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
                          text: '5-4',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-5',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-6',
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
                          text: '5-7',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-8',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-9',
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
                          text: '5-10',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-11',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-12',
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
                          text: '5-13',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-14',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-15',
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
                          text: '5-16',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-17',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-18',
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
                          text: '5-19',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-20',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-21',
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
                          text: '5-22',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-23',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-24',
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
                          text: '5-25',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-26',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-27',
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
                          text: '5-28',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '5-29',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '5-30',
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