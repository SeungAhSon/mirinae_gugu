import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/voice_quiz_body.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';


class ScorePage extends StatelessWidget {
  final int lastscore;
  ScorePage({required this.lastscore});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("당신의 점수는",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20+size, fontWeight:FontWeight.bold, color: Colors.black)),
          Text(
            /*       Text("Score : $score /100",style: TextStyle(color : Colors.brown ,
                  fontSize: 20,fontWeight: FontWeight.bold),),*/
              "Score : $lastscore/100",
              textAlign: TextAlign.center,
              style : TextStyle(fontSize: 20+size, fontWeight:FontWeight.bold, color: Colors.black)
          ),
          FlatButton(
              onPressed: () {
                //_qnController.resetNumber();

                Navigator.pop(context);},
              color: Colors.blue,
              child: Text("종료")
          )

        ],
      ),
    );
  }
}
