import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget{
  const VideoWidget({Key? key}) : super(key: key);


  Widget _thumbnail(){
    return Container(
      height: 50,
      color: Colors.grey.withOpacity(0.5),
    );
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          _thumbnail()
        ],
      ),
    );
  }
}