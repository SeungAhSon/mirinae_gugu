import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';
import 'package:mirinae_gugu/video/src/components/Questions.dart';
import 'package:mirinae_gugu/video/src/components/option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key ?key,
    required this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      child: Column(
        children: [
          SizedBox(height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.02),
          ...List.generate(
            question.options.length,
                (index) => Option(
              index: index,
              text: question.options[index],
              press: () => _controller.checkAns(question, index),
            ),
          ),
        ],
      ),
    );
  }
}
