import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';
import 'package:mirinae_gugu/video/src/components/Questions.dart';
import 'package:mirinae_gugu/video/src/components/option.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ayotube extends StatefulWidget {
  const ayotube({
    Key ?key,
    required this.question,required this.id,
  }) : super(key: key);

  final Question question;
  final int id;

  _ayotube createState() => _ayotube();
}
  class _ayotube extends State<ayotube>{

    late final YoutubePlayerController _controller;
    @override
    void initState() {
      super.initState();
      _controller = YoutubePlayerController(

        initialVideoId: asd[widget.id],

        flags: YoutubePlayerFlags(
          hideThumbnail: true,
          //isLive: true,
          autoPlay: false,
          controlsVisibleAtStart: false,
          useHybridComposition: false,
        ),
      );
    }

    List asd = ['0','1uJvtbTyVPk','d122d','asfsdf','asdasdgdas','5gTwukGJMYk','dasdasda','sadasdas','9','9','IovzbPNQcp4'];

    @override
    void dispose() {

      _controller.pause();
      super.dispose();
    }

    Widget youtube(BuildContext context) {
      return YoutubePlayer(
        controller: _controller,
        liveUIColor: Colors.amber,
//테두리
      );
    }

  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;
    print(widget.id);
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      child: Column(
        children: [
          Container(

              margin: EdgeInsets.only(left: 20,right: 20),
              height: 240,
              child: youtube(context),


          ),
          SizedBox(height: 20,),
          Text("영상 속 단어를 골라주세요", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: Colors.black)),//번째 문제 표
          SizedBox(height: 20),
          ...List.generate(
            widget.question.options.length,
                (index) => Option(
              index: index,
              text: widget.question.options[index],
              video: widget.question.VideoId[index],
              press: () => _controller.checkAns(widget.question, index),
            ),
          ),
        ],
      ),
    );
  }
}
