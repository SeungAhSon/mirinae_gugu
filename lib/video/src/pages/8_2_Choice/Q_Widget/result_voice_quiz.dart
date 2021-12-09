import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_2/2_voice_quiz_body.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_1/1_quiz_controller.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';


class ScorePage extends StatefulWidget {
  ScorePage({Key? key, required this.lastscore}) : super(key : key);
  final int lastscore;
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {

  List<String> images = [
    "assets/test_achievement/success.png",
    "assets/test_achievement/good.png",
    "assets/test_achievement/bad.png",
  ];
  late String message;
  late String image;

  @override
  void initState(){
    if(this.widget.lastscore<3){
      image = images[2];
      message = "조금 더 노력하세요..";
    }else if(this.widget.lastscore<8){
      image = images[1];
      message = "화이팅!";
    }else{
      image = images[0];
      message = "정말 잘하셨어요";
    }
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(title: '결과'),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Material(
              child: Container(
                child: Column(
                  children: <Widget>[
                    SizedBox(height:25),
                    Material(
                      child: Container(
                        width: 300.0,
                        height: 300.0,
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(image,),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 15.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              message,
                              style: TextStyle(fontSize: 20.0+size, fontWeight: FontWeight.bold,),
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text(
                                  "당신의 점수는  ",
                                  style: TextStyle(fontSize: 20.0+size, fontWeight: FontWeight.bold,),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  "${this.widget.lastscore * 10}",
                                  style: TextStyle(color: Colors.indigo, fontSize: 25.0+size, fontWeight: FontWeight.bold,),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  " 점 입니다",
                                  style: TextStyle(fontSize: 20.0+size, fontWeight: FontWeight.bold,),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {
                    Navigator.pop(context);},
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  borderSide: BorderSide(width: 3.0, color: Colors.indigo),
                  splashColor: Colors.indigoAccent,
                  child: Text("종료하기", style: TextStyle(fontSize: 18.0+size)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}