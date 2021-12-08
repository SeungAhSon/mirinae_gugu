import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';

class ButtonChapter extends StatelessWidget {
  ButtonChapter({
    Key ?key,
    required this.onTap, required this.number, required this.text,
  }) : super(key: key);

  final String text;
  final int number;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(bottom: 10), //top: 10,bottom: 10
        child: FlatButton(
          height: 120,
          color: Color(0xffE4EDFF),
          onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));},
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
                        child: Text('$number단원', style: TextStyle(fontSize: 18+size, color: Colors.white, fontWeight: FontWeight.bold))
                    ),
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children:[
                        Text(text,style:TextStyle(fontSize:18+size, color: Colors.black54)),
                        Text('이어서 학습하기 >',style:TextStyle(fontSize:15+size, color: Colors.black45))
                      ]
                  ),
                ]
            ),
          ),
        )
    );
  }
}