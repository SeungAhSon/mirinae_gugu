import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget{
  @override
  _Setting createState() => _Setting();
}

class _Setting extends State<Setting>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("설정",style: TextStyle(fontSize: 20),),

      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                Icon(
                  Icons.info_outlined,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}