import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_1/1_quiz_controller.dart';
import 'package:mirinae_gugu/video/src/components/Questions/Questions_1.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Choice/Chap1/Quiz_1/1_option.dart';
import 'package:mirinae_gugu/video/src/pages/5_components/5_video_list.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class video_page extends StatefulWidget {
  const video_page({
    Key ?key,
    required this.sad,required this.id,
  }) : super(key: key);

  final VideoList_1 sad;
  final int id;

  _5_video_page createState() => _5_video_page();
}
class _5_video_page extends State<video_page>{

  late final YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(

      initialVideoId: asd[widget.id-1],

      flags: YoutubePlayerFlags(
        hideThumbnail: true,
        //isLive: true,
        autoPlay: false,
        controlsVisibleAtStart: false,
        useHybridComposition: false,
      ),
    );
  }

  List asd = ['0','1uJvtbTyVPk','d122d','asfsdf','asdasdgdas','5gTwukGJMYk','dasdasda','sadasdas','9','9','IovzbPNQcp4',
    '0','1uJvtbTyVPk','d122d','asfsdf','asdasdgdas','5gTwukGJMYk','dasdasda','sadasdas','9','9','IovzbPNQcp4'
        '0','1uJvtbTyVPk','d122d','asfsdf','asdasdgdas','5gTwukGJMYk','dasdasda','5gTwukGJMYk','1'];

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
    var height2 = AppBar().preferredSize.height;

    QuestionController _controller = Get.put(QuestionController());
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/(30/(30-widget.id)),), //상단 슬라이드
            child: Container(
              height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.01,
              color: Colors.blue.withOpacity(0.6),
            ),
          ),

          //상단 슬라이드 밑에 선
          Padding(
            padding: EdgeInsets.only(bottom:(MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.001,), //상단 슬라이드 밑에 선
            child: Container(
              height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.001,
              color: Colors.grey.withOpacity(0.3),
            ),
          ),
          Container(
              height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.31,
              child: youtube(context)
          )
        ],
      ),
    );
  }
}
