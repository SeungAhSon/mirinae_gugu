import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/2_Login.dart';
import 'package:shared_preferences/shared_preferences.dart';


List<CameraDescription> cameras = List.empty(growable: true);//
int? select = 1;
double size = 0;
class Loading extends StatefulWidget {
  @override
  _Loading createState() => _Loading();
}

class _Loading extends State<Loading> {
  @override
  void initState() {
    super.initState();
    load();
    loadsize();
    Timer(
      Duration(seconds: 4),
          () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()),),
    );
  }
  void load() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    select = prefs.getInt('fontchoose')!;
  }
  void loadsize() async{
    SharedPreferences ss = await SharedPreferences.getInstance();
    if (ss.getString('fontsize') == "작게") {
      size = -4;
    }
    else if (ss.getString('fontsize') == "조금 작게") {
      size = -2;
    }
    else if (ss.getString('fontsize') == "보통") {
      size = 0;
    }
    else if (ss.getString('fontsize') == "조금 크게") {
      size = 2;
    }
    else if (ss.getString('fontsize') == "크게") {
      size = 4;
    }
    if (size == -4) {
      ss.setString('fontsize', "작게");
    }
    else if (size == -2) {
      ss.setString('fontsize', "조금 작게");
    }
    else if (size == 0) {
      ss.setString('fontsize', "보통");
    }
    else if (size ==2) {
      ss.setString('fontsize', "조금 크게");
    }
    else if (size ==4) {
      ss.setString('fontsize', "크게");
    }
  }


  @override
  Widget build(BuildContext context) {
    print(size);
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
