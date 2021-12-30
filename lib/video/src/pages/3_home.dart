import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mirinae_gugu/video/src/pages/10_Notification/10_Notification.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';

import 'package:mirinae_gugu/video/src/widget/unit_widget.dart';
import 'package:mirinae_gugu/video/src/pages/7_1_Syllable_Main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '4_Word_Main.dart';
import '8_Test_Main.dart';
import '9_setting/9_Walkthrough.dart';

//업데이트 시 3개의 reading7를 다른 것으로 바꾸기만 하면 됩니다.
class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  bool Reading = false;
  List<bool> favorite_1 = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  void loadnotification() async{
    SharedPreferences s = await SharedPreferences.getInstance();

    setState(() {
      Reading = s.getBool("reading9")!;
    }
    );
  }


  aa(BuildContext context,String title){
    showDialog(context: context,barrierDismissible: false,
        barrierColor: Colors.grey,builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title:
            Center(child: Text(title,style: TextStyle(fontSize: 24),)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SizedBox(height: 10),
                Text("원활한 사용을 위한 사용 안내입니다.",style: TextStyle(fontSize: 15),),


              ],
            ),
            actions: <Widget>[
              CupertinoDialogAction(
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WalkthroughScreen()));
                  if (prefs.getBool('tutorial31') != true){
                    prefs.setBool('tutorial31', true);
                  }
                },
                child: Text("확인",style: TextStyle(color: Colors.black),),
              ),
              CupertinoDialogAction(
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  if (prefs.getBool('tutorial31') != true){
                    prefs.setBool('tutorial31', true);
                  }
                  Navigator.of(context).pop();
                },
                child: Text("SKIP",style: TextStyle(color: Colors.black),),
              ),
            ],
          );
        });
  }



  void local2() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    SharedPreferences s = await SharedPreferences.getInstance();
    SharedPreferences ss = await SharedPreferences.getInstance();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (prefs.getBool('tutorial31') == null) {
        aa(context, "사용 가이드");
        s.setBool("reading9",false);
        s.setBool("reading1_1_",false);
        s.setBool("reading1_2_",false);
        s.setBool("reading1_3",false);
        s.setBool("speaking1_1",false);
        s.setBool("speaking1_2",false);
        s.setBool("speaking1_3",false);
        s.setBool("reading2_1",false);
        s.setBool("reading2_2",false);
        s.setBool("reading2_3",false);
        s.setBool("speaking2_1",false);
        s.setBool("speaking2_2",false);
        s.setBool("speaking2_3",false);
        prefs.setInt('fontchoose',1);
        ss.setString('fontsize',"origin");
        prefs.setStringList("favorite_1_", favorite_1.map((value) => value.toString()).toList());
      }
      setState(() {
      });
    });
  }

  @override
  void initState() {
    super.initState();
    loadnotification();
    local2();
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
                              fontSize: 24.0.sp+size, fontWeight: FontWeight.bold))
                      ),
                      CircleAvatar(
                        radius: 40.0,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage('assets/hedgehog.jpeg'),
                      )
                    ]
                ),
              ),
              SizedBox(height: 0.5),
              Align(

                alignment: Alignment.centerLeft,
                child: Text('     학습하기', style: TextStyle(
                    fontSize: 20.sp+size, fontWeight: FontWeight.bold)),
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

                      margin: EdgeInsets.only(left: 30),
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
                                  fontSize: 18.sp+size,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                          ),

                        ),

                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 50),
                         child: Column(children: <Widget>[
                              Text('학습하기', style: TextStyle(
                                  fontSize: 18.sp+size, color: Colors.black87)),
                                Text('', style: TextStyle(
                                  fontSize: 1.sp,)),
                                Text('조음별 발음 학습', style: TextStyle(
                                  fontSize: 15.sp+size, color: Colors.black54)),
                                ]
                        )
                      )
                            ]
                        ),
                      Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                                child: Icon(Icons.arrow_forward_ios_sharp,size: 35,color: Colors.black54,),
                              ),
    )
]
                        )
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
                          margin: EdgeInsets.only(left: 30),
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
                                  fontSize: 18.sp+size,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 50),
                                  child: Column(children: <Widget>[
                                    Text('학습하기', style: TextStyle(
                                        fontSize: 18.sp+size, color: Colors.black87)),
                                    Text('', style: TextStyle(
                                      fontSize: 1,)),
                                    Text('단원별 발음 학습', style: TextStyle(
                                        fontSize: 15.sp+size, color: Colors.black54)),
                                  ]
                                  )
                              )
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Icon(Icons.arrow_forward_ios_sharp,size: 35,color: Colors.black54,),
                                ),
                              )
                            ]
                        )
                      ]
                  ),
                ),
              ),
              FlatButton(
                height: (MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top) * 0.15,
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
                          margin: EdgeInsets.only(left: 30),
                          height: 80, width: 80,
                          decoration: BoxDecoration(
                            color: Color(0xff4573CB),
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
                              child: Text('복습\n시험', style: TextStyle(
                                  fontSize: 18.sp+size,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                          ),
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 50),
                                  child: Column(children: <Widget>[
                                    Text('학습하기', style: TextStyle(
                                        fontSize: 18.sp+size, color: Colors.black87)),
                                    Text('', style: TextStyle(
                                      fontSize: 1.sp,)),
                                    Text('배운 내용을 복습', style: TextStyle(
                                        fontSize: 15.sp+size, color: Colors.black54)),
                                  ]
                                  )
                              )
                            ]
                        ),
                        Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  child: Icon(Icons.arrow_forward_ios_sharp,size: 35,color: Colors.black54,),
                                ),
                              )
                            ]
                        )
                      ]
                  ),
                ),
              ),
              SizedBox(height: 1)
            ],
          ),
        ),

        appBar:  AppBar(

            title:
            Text('구구절절', style: TextStyle(color: Colors.black,fontSize: 24.sp,fontWeight: FontWeight.bold)),
            centerTitle: true,
            backgroundColor: Colors.white, elevation: 3.0,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(color: Colors.blue),
            //leading:
            actions: <Widget>[


        Semantics(
              label: "",

          child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(right: 25, bottom:5),
                        alignment: Alignment.center,
                        child:IconButton(
                          padding: EdgeInsets.all(0),
                          constraints: BoxConstraints(),
                          icon: Reading
                              ? Icon(Icons. email_outlined, color: Colors.blueAccent, size: 35)
                              : Icon(Icons.mark_email_unread, color: Colors.blueAccent,size: 35),
                          onPressed: () async {
                            SharedPreferences s = await SharedPreferences.getInstance();
                            await Navigator.push(context, MaterialPageRoute(builder: (context) => Notific(
                            )),);
                            setState(() {
                              s.setBool("reading9",true);
                              Reading =  s.getBool("reading9")!;
                            }
                            );
                            //onPageChanged: _questionController.updateTheQnNum,
                          }
                      ),
                      ),

                      SizedBox(height: 3,),
                      Padding(
                        padding: EdgeInsets.only(right: 15,),
                        child:Text("공지사항", style: TextStyle(fontSize: 11.sp,color: Colors.black),textAlign: TextAlign.center,),
                      )
                    ],
                  ),
        ),
            ]
        ),
      ),
    );
  }
}