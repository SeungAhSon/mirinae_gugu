import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';

import 'body.dart';





class Option extends StatelessWidget {
  const Option( {
    Key? key,
    required this.text,
    required this.index,
    required this.press, required this.video,
  }) : super(key: key);

  final String video;
  final String text;
  final int index;
  final VoidCallback press;





  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return Colors.green; //right
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return Colors.red; // wrong
              }
            }
            return Colors.black38;
          }

          return InkWell(
            onTap: press,
            child: Container(

              height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.074,
              margin: EdgeInsets.only(bottom:(MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.033),
              padding: EdgeInsets.all((MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.02),
              decoration: BoxDecoration(
                color: getTheRightColor(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "$text", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        }
     );
  }
}
