import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/2_Login.dart';
import 'package:shared_preferences/shared_preferences.dart';


List<CameraDescription> cameras = List.empty(growable: true);//
int select = 1;

class Loading extends StatefulWidget {
  @override
  _Loading createState() => _Loading();
}

class _Loading extends State<Loading> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
          () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()),),
    );
  }
  void load() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    select = prefs.getInt('fontchoose')!;

  }



  @override
  Widget build(BuildContext context) {
    load();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/1_screen_start.png"), fit: BoxFit.fill
            ),
        ),

      child:Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
