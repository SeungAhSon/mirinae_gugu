

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/components/question_card.dart';
import 'package:mirinae_gugu/video/src/components/youtube.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'Questions.dart';
import 'option.dart';


class Body extends StatefulWidget {
  const Body({
    Key ?key,
  }) : super(key: key);
  @override
  _Body createState() => _Body();
}

class _Body extends State<Body>{

  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;

    QuestionController _questionController = Get.put(QuestionController());

    return Stack(

      children: [
        SafeArea(
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2),

                child: Obx(
                      () => Text.rich(

                    TextSpan(
                      text:
                      "Question ${_questionController.questionNumber.value}",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                      children: [
                        TextSpan(
                          text: "/10",
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),

                      ],
                    ),
                  ),
                ),
              ), //번째 문제 표시
            Padding(

              padding: EdgeInsets.only(top:0), //상단 슬라이드 밑에 선
              child: Container(

                height: (MediaQuery.of(context).size.height - height2-MediaQuery.of(context).padding.top) * 0.74,
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => ayotube(
                    question: _questionController.questions[index],
                    id: _questionController.questionNumber.value,
                  ),
                ),

                //child: youtube(context),

              ),
              ),
              SizedBox(height: (MediaQuery.of(context).size.height - height2-MediaQuery.of(context).padding.top) * 0.03),

              Text("영상 속 단어를 골라주세요", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: Colors.black)),


            ],
          ),
        )
      ],
    );
  }
}
