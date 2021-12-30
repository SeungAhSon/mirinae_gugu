import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_3/3_quiz_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Option_3 extends StatelessWidget {
  const Option_3( {
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height.h;
    return GetBuilder<QuestionController_3>(
        init: QuestionController_3(),
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
              height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.065.h,
              margin: EdgeInsets.only(bottom:(MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.03.h,
              left: 40,right: 40),
              padding: EdgeInsets.all((MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.0),
              decoration: BoxDecoration(
                color: getTheRightColor(),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "$text", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16.sp+size),
                  ),
                ],
              ),
            ),
          );
        }
     );
  }
}
