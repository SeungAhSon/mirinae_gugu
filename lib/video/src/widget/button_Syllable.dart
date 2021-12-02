import 'package:flutter/material.dart';

class ButtonSyllable extends StatelessWidget {
  ButtonSyllable({
    Key ?key,
    required this.onTap,  required this.text,
  }) : super(key: key);

  final String text;
  var onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: BorderSide(color: Colors.red)
              )
          )
      ),
      child: Text(text,style: TextStyle(fontSize: 30,color:Colors.black,fontWeight: FontWeight.bold)),
    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => onTap));},
    );
  }
}