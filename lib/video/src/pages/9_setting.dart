import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '9_1.dart';

class Setting extends StatefulWidget{
  @override
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting>{
  bool valNotify1 = true;
  bool valNotify2 = true;
  bool valNotify3 = false;
  late String FontChoose;
  List listFont = ["1","2","3","4"];

  onChangeFunction1(bool newValue1){
    setState(() {
      valNotify1 = newValue1;
    });
  }

  onChangeFunction2(bool newValue2){
    setState(() {
      valNotify2 = newValue2;
    });
  }
  onChangeFunction3(bool newValue3){
    setState(() {
      valNotify3 = newValue3;
    });
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("설정",style: TextStyle(fontSize: 20),),
        centerTitle: true,
      ),

      body:
      Container(

        padding: const EdgeInsets.all(10),
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            SizedBox(height: 10,),

            Row(
              children: [
                Icon(
                  Icons.app_settings_alt,
                  color: Colors.blue,
                ),
                SizedBox(width:10),
                Text("환경",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            Divider(height: 20,thickness: 3,),

            SizedBox(height: 10,),
            buildAccountOption(context, "언어 선택"),

            buildfontsize(context, "글자 크기"),

            buildfontchoose(context, "글꼴"),

            buildNotificationOption("밝기 선택",valNotify1,onChangeFunction1),
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(Icons.info_outlined, color: Colors.blue,),
                SizedBox(width: 10,),
                Text("정보",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            Divider(height: 20,thickness: 3,),
            SizedBox(height: 10,),
            buildcontact(context, "개발자 연락처"),
            buildAccountOption2(context, "버젼"),
            buildAccountOption(context, "평가"),



          ],
        ),
      ),
    );
  }
  Padding buildNotificationOption(String title,bool value, Function onChangeMethod){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.grey[800]
    )),
    Transform.scale(
      scale: 0.9,
      child: CupertinoSwitch(
        activeColor: Colors.blue,
        trackColor: Colors.grey,
        value: value,
        onChanged: (bool newValue) {
          onChangeMethod(newValue);
  },
      ),)
    ],
    ),

  );
  
  }
  
  GestureDetector buildAccountOption(BuildContext context, String title)
  {
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("data"),
                Text("data")
              ],
            ),
            actions: [
              TextButton(
                onPressed: (){
                Navigator.of(context).pop();
              },
                child: Text("닫기"),
              )
            ],
          );
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800]
            ),),
            Icon(Icons.arrow_forward_ios, color: Colors.grey,)
          ],
        ),
      ),
    );
  }
}


GestureDetector buildAccountOption2(BuildContext context, String title)
{
  return GestureDetector(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800]
          ),),
          Text("1.0.0",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]
          ),),
        ],
      ),
    ),
  );
}

GestureDetector buildcontact(BuildContext context, String title)
{
  return GestureDetector(
    onTap: (){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10),
              Text("이메일 주소\njaewan0114@naver.com"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("닫기"),
            )
          ],
        );
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800]
          ),),
          Icon(Icons.arrow_forward_ios, color: Colors.grey,)
        ],
      ),
    ),
  );
}





GestureDetector buildfontsize(BuildContext context, String title)
{
  return GestureDetector(
    onTap: (){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              fontchoose(title: title,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("닫기"),
            )
          ],
        );
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800]
          ),),
          Icon(Icons.arrow_forward_ios, color: Colors.grey,)
        ],
      ),
    ),
  );
}



GestureDetector buildfontchoose(BuildContext context, String title)
{
  int? _gropevalue = 2;
  return GestureDetector(
    onTap: (){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                Radio(
                  value: 1,
                  groupValue:_gropevalue,
                  onChanged: (value){},
                ),
                SizedBox(width:10.0,),
                Text("r")
              ],),
              Row(children: [
                Radio(
                  value: 2,
                  groupValue:_gropevalue,
                  onChanged: (value){},
                ),
                SizedBox(width:10.0,),
                Text("r")
              ],),
              Row(children: [
                Radio(
                  value: 1,
                  groupValue:_gropevalue,
                  onChanged: (value){
                    _gropevalue = value as int?;
                  },
                ),
                SizedBox(width:10.0,),
                Text("r")
              ],)
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("닫기"),
            )
          ],
        );
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800]
          ),),
          Icon(Icons.arrow_forward_ios, color: Colors.grey,)
        ],
      ),
    ),
  );
}