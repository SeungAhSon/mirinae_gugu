import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestButton extends StatelessWidget {
  TestButton({
    Key ?key,
    required this.onTap, required this.icon, required this.text,required this.color, required this.state
  }) : super(key: key);

  final String text;
  var onTap;
  var icon;
  final color;
  bool state;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: MaterialButton(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
          color: state ? Colors.orange : Color(0xff7ba6f9),
          height: 80,
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));
          },
          child: Column(children: [Icon(icon, color: Colors.white,),Text(text, style: TextStyle(fontSize:14+size,color: Colors.white),)],),
        )
    );
  }
}