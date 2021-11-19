import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mirinae_gugu/screens/old_mail.dart';

class Languagechoose extends StatefulWidget{
  Languagechoose({Key? key}) : super(key: key);


  @override
  _Fontchoose createState() => _Fontchoose();
}
class _Fontchoose extends State<Languagechoose> {
  int? select;

  @override
  void initState() {
    super.initState();
    select = 1;

  }
  setSelected(int val){
    setState(() {
      select = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(children: [
          Radio(
            value: 1,
            groupValue: select,
            onChanged: (value) {
              setSelected(value as int);
            },
          ),
          SizedBox(width: 10.0,),
          Text("한국어")
        ],),

      ],
    );
  }
}