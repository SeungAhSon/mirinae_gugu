import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/8_test/8_0_Export.dart';
import 'package:mirinae_gugu/video/src/widget/button_Chapter.dart';
class Test_Main extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(    // <- Scaffold body만 감싼다.
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              SizedBox(height: 5),
              Text('복습 시험', style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              Divider(thickness: 2),

              Text('1단원 : 새학년',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_1(), number: 1, text: '새학년'),
              Divider(thickness: 2),

              Text('2단원 : 봄',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_2(), number: 2, text: '봄'),
              Divider(thickness: 2),

              Text('3단원 : 건강',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_3(), number: 3, text: '건강'),
              Divider(thickness: 2),

              Text('4단원 : 동물&곤충',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_4(), number: 4, text: '동물&곤충'),
              Divider(thickness: 2),

              Text('5단원 : 감정&행동',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_5(), number: 5, text: '감정&행동'),
              Divider(thickness: 2),

              Text('6단원 : 여름',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_6(), number: 6, text: '여름'),
              Divider(thickness: 2),

              Text('7단원 : 과일&채소',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_7(), number: 7, text: '과일&채소'),
              Divider(thickness: 2),

              Text('8단원 : 가을',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_8(), number: 8, text: '가을'),
              Divider(thickness: 2),

              Text('9단원 : 직업',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_9(), number: 9, text: '직업'),
              Divider(thickness: 2),

              Text('10단원 : 집',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_10(), number: 10, text: '집'),
              Divider(thickness: 2),

              Text('11단원 : 겨울',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_11(), number: 11, text: '겨울'),
              Divider(thickness: 2),

              Text('12단원 : 가족',style: TextStyle(fontSize: 18+size, color: Colors.black, fontWeight: FontWeight.bold)),
              ButtonChapter(onTap: Test_12(), number: 12, text: '가족'),
              Divider(thickness: 2),
            ],
          ),
        ),
        appBar: DefaultAppBar(title: '구구절절'),
    );
  }
}