import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class update extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: CupertinoAlertDialog(
      title: Center(child: Text("안내", style: TextStyle(fontSize: 24),)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Text("추후 업데이트 예정입니다 !!", style: TextStyle(fontSize: 15),),
        ],
      ),
      actions: <Widget>[
        CupertinoDialogAction(
          onPressed: () async {
            Navigator.of(context).pop();
          },
          child: Text("확인", style: TextStyle(color: Colors.black),),
        ),
      ],
    )));
  }
  }
