import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/screens/old_mail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../main.dart';
import '../1_Loading.dart';
import '../2_Login.dart';



class Fontchoose extends StatefulWidget{
  Fontchoose({Key? key}) : super(key: key);


  @override
  _Fontchoose createState() => _Fontchoose();
}
class _Fontchoose extends State<Fontchoose> {



  @override
  void initState() {
    load();
    super.initState();
  }
  void setSelected(int val){
    setState(() {
      select = val;
    });
  }



  void load() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
      if (prefs.getInt('fontchoose') == 1) {
        select = 1;
      }
      else if (prefs.getInt('fontchoose') == 2) {
        select = 2;
      }
      else if (prefs.getInt('fontchoose') == 3) {
        select = 3;


      }
      else if (prefs.getInt('fontchoose') == 4) {
        select = 4;

      }
      else if (prefs.getInt('fontchoose') == 5) {
        select = 5;

      }

      select = prefs.getInt('fontchoose')!;


  }




  void font() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (select==1){
      await prefs.setInt('fontchoose', 1);


    }
    else if(select ==2){
      await prefs.setInt('fontchoose', 2);


    }
    else if(select ==3){
      await prefs.setInt('fontchoose', 3);

    }
    else if(select ==4){
      await prefs.setInt('fontchoose', 4);

    }
    else if(select ==5){
      await prefs.setInt('fontchoose', 5);

    }
      select = prefs.getInt('fontchoose')!;

}


  @override
  Widget build(BuildContext context) {

    font();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(children: [
          Radio(
            value: 1,
            groupValue: select,
            onChanged: (value) {
              setSelected(value as int);
            },
          ),

          SizedBox(width: 10.0,),
          Text("ROBOTO(기본)",style: TextStyle(fontFamily: "origin"),)
        ],),
        Row(children: [
          Radio(
            value: 2,
            groupValue: select,
            onChanged: (value) {
              setSelected(value as int);
            },
          ),
          SizedBox(width: 10.0,),
          Text("주아체",style: TextStyle(fontFamily: "bmjua"),)

        ],),
        Row(children: [
          Radio(
            value: 3,
            groupValue: select,
            onChanged: (value) {
              setSelected(value as int);
            },
          ),
          SizedBox(width: 10.0,),
          Text("조선100년체",style: TextStyle(fontFamily: "chosun100"),)
        ],),
        Row(children: [
          Radio(
            value: 4,
            groupValue: select,
            onChanged: (value) {
              setSelected(value as int);
            },
          ),
          SizedBox(width: 10.0,),
          Text("야체",style: TextStyle(fontFamily: "ya"),)
        ],),
        Row(children: [
          Radio(
            value: 5,
            groupValue: select,
            onChanged: (value) {
              setSelected(value as int);
            },
          ),
          SizedBox(width: 10.0,),
          Text("나눔고딕체",style: TextStyle(fontFamily: "nunum"),)
        ],
        ),
        SizedBox(height: 20),
        Text("※ 변경 내용을 적용하려면 앱을 다시 시작하세요", style: TextStyle(fontSize: 12),),
      ],
    );
  }
}