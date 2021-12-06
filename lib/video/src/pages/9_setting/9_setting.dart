import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:mirinae_gugu/video/src/pages/9_setting/9_Walkthrough.dart';
import 'package:mirinae_gugu/video/src/pages/9_setting/9_Walkthrough_item_data.dart';


import '9_FontSize.dart';
import '9_Fontchoose.dart';
import '9_LanguageChoose.dart';
import '9_Walkthrough_item_data.dart';

class Setting extends StatefulWidget{
  @override
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting>{





  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("설정",style: TextStyle(fontSize: 24+size,color: Colors.black,fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
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
                    size: 25,
                ),
                SizedBox(width:10),
                Text("환경",style: TextStyle(fontSize: 22+size,fontWeight: FontWeight.bold),)
              ],
            ),
            Divider(height: 20,thickness: 3,),
            SizedBox(height: 10,),
            buildLanguage(context, "언어 설정"),
            SizedBox(height: 10,),
            buildfontchoose(context, "글꼴 설정"),
            SizedBox(height: 10,),
            buildfontsize(context, "글자 크기 설정"),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.email_outlined, color: Colors.blue,size: 25,),
                SizedBox(width: 10,),
                Text("정보",style: TextStyle(
                  fontSize: 22+size,
                  fontWeight: FontWeight.bold
                ),)
              ],
            ),
            Divider(height: 20,thickness: 3,),
            SizedBox(height: 10,),
            buildcontact(context, "개발자 연락처"),
            SizedBox(height: 10,),
            buildAccountOption2(context, "버전 정보"),
            SizedBox(height: 10,),



            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.email_outlined, color: Colors.blue,size: 25,),
                SizedBox(width: 10,),
                Text("사용 안내", style: TextStyle(
                    fontSize: 22+size,
                    fontWeight: FontWeight.bold
                ),)
              ],
            ),
            Divider(height: 20,thickness: 3,),
            SizedBox(height: 10,),
            buildwalkthrough(context, "사용법 및 기능"),


          ],
        ),
      ),

    );
  }

  
  GestureDetector buildLanguage(BuildContext context, String title)
  {
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text(title),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Languagechoose(),
              ],
            ),
            actions: [
              TextButton(
                onPressed: (){
                Navigator.of(context).pop();
              },
                child: Text("닫기",style: TextStyle(color: Colors.black),),
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
            Text(title,textScaleFactor: 1.0,style: TextStyle(
              fontSize: 20+size,
                fontWeight: FontWeight.w600,


            ),),
            Icon(Icons.arrow_forward_ios, color: Colors.grey,size: 28,)
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
              fontSize: 20+size,
              fontWeight: FontWeight.w600,

          ),),
          Text("1.0.0",style: TextStyle(
              fontSize: 18+size,
              fontWeight: FontWeight.w500,
              color: Colors.grey[800]
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
              child: Text("닫기",style: TextStyle(color: Colors.black),),
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
            fontSize: 20+size,
            fontWeight: FontWeight.w600,

          ),),
          Icon(Icons.arrow_forward_ios, color: Colors.grey,size: 28,)
        ],
      ),
    ),
  );
}


Widget buildwalkthrough(BuildContext context, String title)
{
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => WalkthroughScreen()));
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
              fontSize: 20+size,
              fontWeight: FontWeight.w600,

          ),),
          Icon(Icons.arrow_forward_ios, color: Colors.grey,size: 28,)
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
              MyApp2()
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("닫기",style: TextStyle(color: Colors.black),),
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
              fontSize: 20+size,
              fontWeight: FontWeight.w600,

          ),),
          Icon(Icons.arrow_forward_ios, color: Colors.grey,size: 28,)
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
          content: Fontchoose(),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("닫기",style: TextStyle(color: Colors.black),),
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
              fontSize: 20+size,
              fontWeight: FontWeight.w600,

          ),),
          Icon(Icons.arrow_forward_ios, color: Colors.grey,size: 28,)
        ],
      ),
    ),
  );
}