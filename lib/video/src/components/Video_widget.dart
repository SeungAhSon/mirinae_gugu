import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


class VideoWidget extends StatelessWidget{
  const VideoWidget({Key? key}) : super(key: key);



  Widget _thumbnail(BuildContext context){
    return Container(

      height: MediaQuery.of(context).size.height/2.9,
      color: Colors.grey.withOpacity(0.5),
    );
  }

  Widget _simpleDetailinfo(){
    return Container(
      child: Row(children: [

      ],
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          _thumbnail(context),
          _simpleDetailinfo()
        ],
      ),
    );
  }
}