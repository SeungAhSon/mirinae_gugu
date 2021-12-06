import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';

class TestButton extends StatelessWidget {
  TestButton({
    Key ?key,
    required this.onTap, required this.icon, required this.text,
  }) : super(key: key);

  final String text;
  var onTap;
  var icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
        color: Colors.blueAccent,
        height: 80,
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));},
        child: Column(children: [Icon(icon, color: Colors.white,),Text(text, style: TextStyle(fontSize:14+size,color: Colors.white),)],),
      )
    );
  }
}