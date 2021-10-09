import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';

class Vocab_Screen_510 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
                      child: Text('  낱말 10단원',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '10-1',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-2',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-3',
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
                          text: '10-4',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-5',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-6',
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
                          text: '10-7',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-8',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-9',
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
                          text: '10-10',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-11',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-12',
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
                          text: '10-13',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-14',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-15',
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
                          text: '10-16',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-17',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-18',
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
                          text: '10-19',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-20',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-21',
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
                          text: '10-22',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-23',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-24',
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
                          text: '10-25',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-26',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-27',
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
                          text: '10-28',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '10-29',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '10-30',
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