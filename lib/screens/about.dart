import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('about'), backgroundColor: Colors.blue),
      body: Center(child: Text('About this app...'),),
    );
  }
}