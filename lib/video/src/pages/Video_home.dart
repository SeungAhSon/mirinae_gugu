import 'dart:developer';

import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mirinae_gugu/video/src/controller/Video_home_controller.dart';
import 'package:mirinae_gugu/video/src/controller/YoutubeDetailController.dart';

import 'package:mirinae_gugu/main.dart';
import 'package:mirinae_gugu/video/src/models/camera.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mirinae_gugu/video/src/models/youtubeId.dart';

List<CameraDescription> cameras = List.empty(growable: true); //카메라


class Home extends StatefulWidget {
  @override
  const Home({Key? key}) : super(key: key);
  _Home createState() => _Home();
}

class _Home extends State<Home>{
  CameraController controller =
  CameraController(cameras[1], ResolutionPreset.veryHigh);

  //final VideoHomeController controller= Get.put(VideoHomeController());
  late final YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
    _controller = YoutubePlayerController(
      initialVideoId: '1uJvtbTyVPk',
      flags: YoutubePlayerFlags(
        autoPlay: false,
        loop: false,
        hideThumbnail: false,
        //isLive: true,

        controlsVisibleAtStart: false,

        useHybridComposition: false,
      ),
    );

  }


  @override

  @override
  void dispose() {
    _controller.dispose();
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context){

    //Get.find<YoutubeDetailController>();
    var height2 = AppBar().preferredSize.height;
    if (!controller.value.isInitialized) {
      return Container();
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //이 부분은 상단바 반응형으로 만든거. 근데 없어도 될듯
          //toolbarHeight: MediaQuery.of(context).size.height/(14/1),
          backgroundColor: Colors.white,
          title: Text('1-1',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
            iconSize: 25,
            icon: Icon(Icons.arrow_back),

          ),

          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.bookmark_outline),
                iconSize: 25,
                color: Colors.black,
                onPressed: () {
                  print('GD');
                }
            ),
          ],
        ),

          body: Stack(

            children: [
            Center(
              child: CameraPreview(controller),
            ),

              //상단 슬라이드
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    backcolor1(), //유튜브 뒤에 흰색 배경
                    Column(

                      children: [

              Padding(
                padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/(30/29),), //상단 슬라이드
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

              //여긴 유튜브 영상
              Padding(
                padding: EdgeInsets.only(bottom: 0,),//left:MediaQuery.of(context).size.width/(12/1),right: MediaQuery.of(context).size.width/(12/1),),
                child: Container(
                height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.40,//
                width: MediaQuery.of(context).size.width,
                  color: Colors.grey.withOpacity(0.5),
                    child: youtube(context),
              ),

            ),
                        SizedBox(              //중간 여백
                          height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.01,

                        ),
            ],
  ),
              ],
                ),


              //카메라

                //padding: EdgeInsets.only(bottom: 0),//left:MediaQuery.of(context).size.width/(12/1),right: MediaQuery.of(context).size.width/(12/1),),
                SizedBox(              //중간 여백
                  height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.38,

                ),


          Stack(
            children: [
              backcolor2(), //카메라 밑 부분 흰색 배경
              Column(

                children: [
              Padding(
                padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.01,
                  left: MediaQuery.of(context).size.width/(8/1),right:MediaQuery.of(context).size.width/(8/1) ), //상단 슬라이드 밑에 선
                child: Container(
                  height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.002,
                  color: Colors.grey[300],
                ),
              ),


              //텍스트
              Padding(
                padding: EdgeInsets.only(bottom: 0,left: MediaQuery.of(context).size.width/(8/1),right:MediaQuery.of(context).size.width/(8/1)),//left:MediaQuery.of(context).size.width/(12/1),right: MediaQuery.of(context).size.width/(12/1),),
                child: Container(
                  height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.08,
                  color: Colors.grey[200],
                ),
              ),



              //하단 바 상단선
              Padding(
                padding: EdgeInsets.only(bottom:0), //상단 슬라이드 밑에 선
                child: Container(
                  height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.002,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),


              //하단 바
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/(70/1), right: MediaQuery.of(context).size.width/(70/1)),//left:MediaQuery.of(context).size.width/(12/1),right: MediaQuery.of(context).size.width/(12/1),),
                child: Container(
                  height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.07, //크기 8%
                  color: Colors.white.withOpacity(0),
                    child: _buttonZone()
                ),
              ),

              //하단 바 아래
              Padding(
                padding: EdgeInsets.only(bottom:0), //0.063남음
                child: Container(
                  height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.002,
                  color: Colors.grey.withOpacity(0.5),

                ),
              ),
  ],
              ),
],
          ),
//0.013남음
  ],
          ),
            ],
            )
          )


    );
  }


  Widget _buttonZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.arrow_back_ios_sharp, size: 25,
          color: Colors.black.withOpacity(0)),

        // IconButton(
        //     icon: Icon(Icons.arrow_back_sharp),
        //     iconSize: 30,
        //     color: Colors.black,
        //     onPressed: () {
        //       print('이전꺼');
        //     }
        // ),
        IconButton(
            icon: Icon(Icons.arrow_forward_ios_sharp),
            iconSize: 25,
            color: Colors.black,
            onPressed: () {
              print('앞에꺼');
            }
        ),
      ],
    );
  }



  Widget youtube(BuildContext context) {


    return YoutubePlayer(
      controller: _controller,
      liveUIColor: Colors.amber,

    );
  }



Widget backcolor1(){// 카메라 위 유튜브 부분
  var height2 = AppBar().preferredSize.height;
    return Container(
      height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.422,
      color: Colors.white,
    );
}

  Widget backcolor2(){ //카메라 아래
    var height2 = AppBar().preferredSize.height;
    return Container(
      height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.198,
      color: Colors.white,
    );
  }

  Widget backcolor3(){
    var height2 = AppBar().preferredSize.height;
    return Container(
      height: (MediaQuery.of(context).size.height - height2 - MediaQuery.of(context).padding.top) * 0.401,
      color: Colors.white,
    );
  }








}


