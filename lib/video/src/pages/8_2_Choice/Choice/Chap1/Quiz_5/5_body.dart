import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_quiz_controller.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_5/5_youtube.dart';

class Body_5 extends StatefulWidget {
  const Body_5({
    Key ?key,
  }) : super(key: key);
  @override
  _Body_5 createState() => _Body_5();
}

class _Body_5 extends State<Body_5>{

  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;

    QuestionController_5 _questionController = Get.put(QuestionController_5());
    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2),

                child: Obx(() => Text.rich(
                  TextSpan(
                    text:
                    "Question ${_questionController.questionNumber.value}",
                    style: TextStyle(fontSize: 15+size, color: Colors.blue),
                    children: [
                      TextSpan(
                        text: "/10",
                        style: TextStyle(fontSize: 15+size, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top:5), //상단 슬라이드 밑에 선
                child: Container(
                  height: (MediaQuery.of(context).size.height - height2-MediaQuery.of(context).padding.top) * 0.87,
                  child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNum,
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => ayotube_5(
                      question: _questionController.questions[index],
                      id: index+1,
                    ),
                  ),
                  //child: youtube(context),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
