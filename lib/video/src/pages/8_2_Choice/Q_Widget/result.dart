import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';

class ScoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("당신의 점수는",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20+size, fontWeight:FontWeight.bold, color: Colors.black)),
          Text(
            "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
              textAlign: TextAlign.center,
              style : TextStyle(fontSize: 20+size, fontWeight:FontWeight.bold, color: Colors.black)
          ),
          FlatButton(
              onPressed: () {
                _qnController.resetNumber();
                Navigator.pop(context);},
              color: Colors.blue,
              child: Text("종료")
          )

        ],
      ),
    );
  }
}
