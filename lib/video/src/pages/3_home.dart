import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/app.dart';
import 'package:mirinae_gugu/video/src/pages/10_Notification/10_Notification.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';

import 'package:mirinae_gugu/video/src/widget/unit_widget.dart';
import 'package:mirinae_gugu/video/src/pages/7_1_Syllable_Main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '4_Word_Main.dart';
import '8_Test_Main.dart';

//업데이트 시 3개의 reading7를 다른 것으로 바꾸기만 하면 됩니다.
class Home extends StatefulWidget{
  static const PrimaryColor1 = const Color(0xFF5DB6F8);
  const Home({Key? key}) : super(key: key);
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override

  bool Reading = false;

  void loadnotification() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    setState(() {
      Reading = s.getBool("reading7")!;
    });

  }
  @override
  void initState() {
    super.initState();
    loadnotification();
  }


  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                height: (MediaQuery
                    .of(context)
                    .size
                    .height - MediaQuery
                    .of(context)
                    .padding
                    .top) * 0.15,
                margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Color(0xff9CBBF7),
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(2, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text('행복한\n하루되세요~~', style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold))
                      ),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage('assets/hedgehog.jpeg'),
                      )
                    ]
                ),
              ),
              SizedBox(height: 1),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('     학습하기', style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              FlatButton(
                height: (MediaQuery
                    .of(context)
                    .size
                    .height - MediaQuery
                    .of(context)
                    .padding
                    .top) * 0.15,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Syllable_pages()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(
                                    2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('조음\n학습', style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('학습하기 >', style: TextStyle(
                                  fontSize: 18, color: Colors.black54)),
                              Text('조음을 공부', style: TextStyle(
                                  fontSize: 15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),
              FlatButton(
                height: (MediaQuery
                    .of(context)
                    .size
                    .height - MediaQuery
                    .of(context)
                    .padding
                    .top) * 0.15,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Word_Main()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(
                                    2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('낱말\n학습', style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('학습하기 >', style: TextStyle(
                                  fontSize: 18, color: Colors.black54)),
                              Text('낱말 별 학습', style: TextStyle(
                                  fontSize: 15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),
              FlatButton(
                height: (MediaQuery
                    .of(context)
                    .size
                    .height - MediaQuery
                    .of(context)
                    .padding
                    .top) * 0.15,
                color: Color(0xffE4EDFF),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Test_Main()),);
                },
                child: Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Container(
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff4573CB),
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(
                                    2, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Center(
                              child: Text('복습\n시험', style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('학습하기 >', style: TextStyle(
                                  fontSize: 18, color: Colors.black54)),
                              Text('배운 내용을 공부', style: TextStyle(
                                  fontSize: 15, color: Colors.black45))
                            ]
                        ),
                      ]
                  ),
                ),
              ),
              SizedBox(height: 1)
            ],
          ),
        ),
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('구구절절',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),),
            centerTitle: true,
            actions : <Widget>[
              IconButton(
                  icon: Reading
                      ? Icon(Icons. email_outlined, color: Colors.blueAccent, size: 35)
                      : Icon(Icons.mark_email_unread, color: Colors.blueAccent,size: 35),
                  onPressed: () async {
                    SharedPreferences s = await SharedPreferences.getInstance();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Notific(
                    )),);
                    setState(() {
                      s.setBool("reading7",true);
                      Reading =  s.getBool("reading7")!;

                    });

                    //onPageChanged: _questionController.updateTheQnNum,
                  }
              ),
            ]
        ),
      ),
    );
  }
}