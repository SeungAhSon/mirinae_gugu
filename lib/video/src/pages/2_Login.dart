import 'dart:developer';
import 'package:mirinae_gugu/video/src/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/binding/initBinding.dart';

class Login extends StatelessWidget{
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    WidgetsFlutterBinding.ensureInitialized();
    return GetMaterialApp(
      title: "구구절절",
      theme: ThemeData(
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