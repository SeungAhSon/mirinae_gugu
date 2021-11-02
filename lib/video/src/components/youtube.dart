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



    List asd = ['0','1uJvtbTyVPk','d122d','asfsdf','asdasdgdas','5gTwukGJMYk','dasdasda','sadasdas'];

    @override
    void dispose() {

      _controller.pause();
      super.dispose();
    }

    Widget youtube(BuildContext context) {
      return YoutubePlayer(

        controller: _controller,
        liveUIColor: Colors.amber,
      );
    }

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    var height2 = AppBar().preferredSize.height;
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      child: Column(
        children: [
          SizedBox(height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.02),
          ...List.generate(
            widget.question.options.length,
                (index) => Option(
              index: index,
              text: widget.question.options[index],
              video: widget.question.VideoId[index],
              press: () => _controller.checkAns(widget.question, index),
            ),
          ),
          Container(
            height: 200,
            child: youtube(context)
          )
        ],
      ),
    );
  }
}
