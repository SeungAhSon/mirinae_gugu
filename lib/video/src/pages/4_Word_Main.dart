import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/pages/5_Education/5_0_Export.dart';

import '1_Loading.dart';

class Word_Main extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Center(    // <- Scaffold body만 감싼다.
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              SizedBox(height: 5),
              Text('낱말 학습', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_51()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('1단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('새학년',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//새학년
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_52()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('2단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('봄',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//봄
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_53()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('3단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('건강',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//건강
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_54()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('4단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('동물 / 곤충',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//동물&곤충
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_55()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('5단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('감정 / 행동',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//감정&행동
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_56()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('6단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('여름',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//여름
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_57()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('7단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('과일 / 채소',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//과일&채소
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_58()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('8단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('가을',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//가을
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_59()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('9단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('직업',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//직업
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_510()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('10단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('집',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//집
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_511()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('11단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('겨울',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//겨울
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Vocab_Screen_512()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children : <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color:Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('12단원', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children:[
                              Text('가족',style:TextStyle(fontSize:18+size, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),//가족
            ],
          ),
        ),
        appBar: DefaultAppBar(title: '구구절절'),
      ),
    );
  }
}