import 'dart:developer';
import 'package:mirinae_gugu/video/src/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/binding/initBinding.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../main.dart';
import '1_Loading.dart';
import '9_setting/9_Fontchoose.dart';

class Login extends StatelessWidget{
  const Login({Key? key}) : super(key: key);


  void load() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    select = prefs.getInt('fontchoose')!;
  }

@override
  Widget build(BuildContext context){


    String? Q;
    if (select==1){
      Q = "origin";

    }
    else if(select ==2){
      Q = "bmjua";

    }
    else if(select ==3){
      Q = "chosun100";
    }
    else if(select ==4){
      Q = "ya";
    }
    else if(select ==5){
      Q ="nunum";
    }
    WidgetsFlutterBinding.ensureInitialized();

    load();
    print(Q);
    return GetMaterialApp(
      builder: (context, child) {
        return MediaQuery(
          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
      title: "구구절절",
      theme: ThemeData(
        brightness: Brightness.light,

        fontFamily: Q,
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),


      initialBinding: InitBinding(),
      initialRoute: "/",

      debugShowCheckedModeBanner: false,

      getPages: [
        GetPage(name: '/', page: ()=>App())

      ],

    );
  }
}

