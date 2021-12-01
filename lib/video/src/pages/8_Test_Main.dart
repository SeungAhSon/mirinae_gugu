import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/components/DefaultAppBar.dart';
import 'package:mirinae_gugu/video/src/components/voice_quiz_body.dart';
import 'package:mirinae_gugu/video/src/pages/5_Education/5_0_Export.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/8_2_1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/5_Education/5_0_Export.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/8_1_test.dart';
class Test_Main extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Center(    // <- Scaffold body만 감싼다.
          child: ListView(
            padding: EdgeInsets.all(10),
            children: [
              SizedBox(height: 5),
              Text('복습 시험', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              Divider(thickness: 2),

              Text('1단원 : 새학년',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Test_1()),);
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
              ),
              Divider(thickness: 2),

              Text('2단원 : 봄',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Test_1()),);
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
              ),
              Divider(thickness: 2),

              Text('3단원 : 건강',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Test_1()),);
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
              ),
              Divider(thickness: 2),

              Text('4단원 : 건강',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              FlatButton(
                height: 120,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Test_1()),);
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
                              Text('동물&곤충',style:TextStyle(fontSize:18, color: Colors.black54)),
                              Text('이어서 학습하기 >',style:TextStyle(fontSize:15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),
              Divider(thickness: 2),
            ],
          ),
        ),
        appBar: DefaultAppBar(title: '구구절절'),
      ),
    );
  }
}