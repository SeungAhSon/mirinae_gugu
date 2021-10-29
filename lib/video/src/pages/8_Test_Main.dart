import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/5_Education/5_0_Export.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/8_2_1_Choice.dart';
import 'package:mirinae_gugu/video/src/pages/5_Education/5_0_Export.dart';
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Choice821()),);
                    },
                    child: Container(
                        width: 200, height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.teal,
                              Color(0x80CBC4FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(5, 5),
                              blurRadius: 10,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Press',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Choice821()),);
                    },
                    child: Container(
                        width: 200, height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.teal,
                              Color(0x80CBC4FF),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              offset: Offset(5, 5),
                              blurRadius: 10,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Press',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                    ),
                  ),
                ],
              ),
              Divider(thickness: 2),

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
                              Text('가족',style:TextStyle(fontSize:18, color: Colors.black54)),
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
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('구구절절',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
            iconSize: 22,
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}