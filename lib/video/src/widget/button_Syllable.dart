import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';

class ButtonSyllable extends StatelessWidget {
  ButtonSyllable({
    Key ?key,
    required this.onTap,  required this.text,
  }) : super(key: key);

  final String text;
  var onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: RaisedButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            side: BorderSide(color: Colors.black),
        ),
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));},
        child: Text(text,textAlign:TextAlign.center, style: TextStyle(fontSize: 30+size,color:Colors.black,fontWeight: FontWeight.bold)),
        )
    );
  }
}