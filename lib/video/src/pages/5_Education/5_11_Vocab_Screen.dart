import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/widget/learn_level_button.dart';

class Vocab_Screen_511 extends StatelessWidget{
  aa(BuildContext context,String title){
    showDialog(context: context,barrierDismissible: false,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Center(child: Text(title,style: TextStyle(fontSize: 24),)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                Text("추후 업데이트 예정입니다 !!",style: TextStyle(fontSize: 15),),
              ],
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: () async {
                  Navigator.of(context).pop();

                },
                child: Text("확인",style: TextStyle(color: Colors.black),),
              ),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context){
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      aa(context, "안내");
    });
    return Scaffold(
        appBar: DefaultAppBar(title: '낱말학습'),
        body: Center(
            child: ListView(
                padding: const EdgeInsets.all(10.0),
                children: <Widget>[
                  SizedBox(height: 5),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('  낱말 11단원',style: TextStyle(fontSize: 20.0+size,fontWeight: FontWeight.bold))
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      LearnLevelButton(
                          text: '11-1',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-2',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-3',
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
                          text: '11-4',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-5',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-6',
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
                          text: '11-7',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-8',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-9',
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
                          text: '11-10',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-11',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-12',
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
                          text: '11-13',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-14',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-15',
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
                          text: '11-16',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-17',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-18',
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
                          text: '11-19',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-20',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-21',
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
                          text: '11-22',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-23',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-24',
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
                          text: '11-25',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-26',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-27',
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
                          text: '11-28',
                          onTap: () async {}
                      ),
                      LearnLevelButton(
                        text: '11-29',
                        onTap: () async {
                          //Level newLevel = await gameBloc.setLevel(index + 1);
                          //Navigator.of(context).push(GamePage.route(newLevel));
                        },
                      ),
                      LearnLevelButton(
                        text: '11-30',
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