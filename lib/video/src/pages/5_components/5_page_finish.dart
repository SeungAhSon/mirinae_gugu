import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../1_Loading.dart';


GestureDetector buildcontact(BuildContext context, String title)
{
  return GestureDetector(
    onTap: (){
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 10),
              Text("이메일 주소\njaewan0114@naver.com"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: Text("닫기"),
            )
          ],
        );
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,style: TextStyle(
            fontSize: 20+size,
            fontWeight: FontWeight.w600,

          ),),
          Icon(Icons.arrow_forward_ios, color: Colors.grey,size: 28,)
        ],
      ),
    ),
  );
}
