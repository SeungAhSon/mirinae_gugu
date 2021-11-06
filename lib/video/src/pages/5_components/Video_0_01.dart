import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_speech/google_speech.dart';
import 'package:mirinae_gugu/video/src/pages/noise_meter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sound_stream/sound_stream.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:mirinae_gugu/video/src/pages/5_Education/5_1_Vocab_Screen.dart';

import 'package:mirinae_gugu/video/src/pages/favorite_global.dart';



class Video0_01 extends StatefulWidget {
  Video0_01({
    Key ?key,
    required this.text1, required this.YoutubeID, required this.navi,
    required this.favorite,
    required this.favorite2,
    required this.back,
    this.next='',

  }) : super(key: key);

  final String text1;
  final String YoutubeID;
  final bool favorite;
  final String favorite2;
  final String back;
  final String next;
  final navi;



  @override
  _Video0_01 createState() => _Video0_01();
}

class _Video0_01 extends State<Video0_01>{

  CameraController controller =
  CameraController(cameras[1], ResolutionPreset.veryHigh);

  //final VideoHomeController controller= Get.put(VideoHomeController());
  late final YoutubePlayerController _controller;
  final RecorderStream _recorder = RecorderStream();
  late bool favoriteButton_0_01_01 = widget.favorite;

  bool recognizing = false;
  bool recognizeFinished = false;
  String text = '';
  StreamSubscription<List<int>>? _audioStreamSubscription;
  BehaviorSubject<List<int>>? _audioStream;

  @override
  void initState() {
    super.initState();
    _recorder.initialize();
    loadFavorite();
    controller.initialize().then((_) {


      setState(() {});
    });
    _controller = YoutubePlayerController(
      initialVideoId: widget.YoutubeID,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        loop: false,
        hideThumbnail: false,
        //isLive: true,
        mute: false,
        controlsVisibleAtStart: false,

        useHybridComposition: false,
      ),
    );

  }


  @override

  @override
  void dispose() {
    _controller.pause();
    controller.dispose();
    super.dispose();
  }

  void streamingRecognize() async {
    _audioStream = BehaviorSubject<List<int>>();
    _audioStreamSubscription = _recorder.audioStream.listen((event) {
      _audioStream?.add(event);
    });

    await _recorder.start();

    setState(() {
      recognizing = true;
    });
    //서비스 계정. assets 폴더에 api key 넣음
    final serviceAccount = ServiceAccount.fromString(
        '${(await rootBundle.loadString('assets/lejinhy-speech-to-text-11be68205205.json'))}');
    final speechToText = SpeechToText.viaServiceAccount(serviceAccount);
    final config = _getConfig();

    final responseStream = speechToText.streamingRecognize(
        StreamingRecognitionConfig(config: config, interimResults: true),
        _audioStream!);

    var responseText = '';
    //마이크 입력 받았을 때 출력될 텍스트 설정.
    responseStream.listen((data) {
      final currentText =
      data.results.map((e) => e.alternatives.first.transcript).join("");
      if (data.results.first.isFinal) {
        //responseText += currentText;
        setState(() {
          //text = responseText;
          recognizeFinished = true;
        });
      } else {
        setState(() {
          text = currentText;
          recognizeFinished = true;
        });
      }

    }, onDone: () {
      setState(() {
        recognizing = false;
      });
    });
  }

  //마이크 stop 했을 때
  void stopRecording() async {
    await _recorder.stop();
    await _audioStreamSubscription?.cancel();
    await _audioStream?.close();
    setState(() {
      recognizing = false;
    });
  }

  //google speech to text api 설정
  RecognitionConfig _getConfig() => RecognitionConfig(
      encoding: AudioEncoding.LINEAR16,
      model: RecognitionModel.command_and_search,
      enableAutomaticPunctuation: false,
      sampleRateHertz: 16000,
      languageCode: 'ko-KR');


  loadFavorite() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      favoriteButton_0_01_01 = prefs.getBool('_favoriteButton_0_01_01')!;
    });
  }


  void delete() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('_favoriteButton_0_01_01', false);
    setState(() {
      favoriteButton_0_01_01 = prefs.getBool('_favoriteButton_0_01_01')!;
    });
  }

  void saved() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('_favoriteButton_0_01_01', true);
    setState(() {
      favoriteButton_0_01_01 = prefs.getBool('_favoriteButton_0_01_01')!;
    });
  }




  @override
  Widget build(BuildContext context){

    //Get.find<YoutubeDetailController>();
    var height2 = AppBar().preferredSize.height;
    if (!controller.value.isInitialized) {
      return Container();
    }

    return WillPopScope(
      onWillPop: (){
        setState(() {

        });
        return Future(()=>false);
      },
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
              Navigator.pushReplacement(
                  context, CupertinoPageRoute(builder: (context) => Vocab_Screen_51()));
            },
            color: Colors.black,
            iconSize: 25,
            icon: Icon(Icons.arrow_back),

          ),

          actions: <Widget>[
            IconButton(
                onPressed: favoriteButton_0_01_01 ? delete : saved,
              icon: favoriteButton_0_01_01
                  ? Icon(Icons.bookmark_rounded, color: Colors.yellow[800], size: 30) //그대로일때
                  : Icon(Icons.bookmark_add_outlined, color: Colors.yellow[800],size: 30),
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
                        child: Stack(
                          // text 프린트 해주는 함수 호출
                            children: <Widget>[
                              Container(
                                child: Noise(),
                              ),
                              Container(
                                child: textprint(),
                              )
                            ]
                        )
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
          onPressed: recognizing ? stopRecording : streamingRecognize,
          icon: recognizing
              ? Icon(Icons.mic, color: Colors.red, size: 30)
              : Icon(Icons.mic, color: Colors.blue,size: 30),
        ),
        IconButton(
            icon: Icon(Icons.arrow_forward_ios_sharp),
            iconSize: 25,
            color: Colors.black,
            onPressed: () async {
    await Navigator.pushReplacement(
    context, CupertinoPageRoute(builder: (context) => Vocab_Screen_51()));
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


//텍스트 프린트
  Widget textprint() {
    return Column(
        children: [
          (recognizeFinished)
              ?Text(
              text,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                letterSpacing: 1.0,
                fontSize: 20.0,
                height: 1.75,
                /*fontWeight: FontWeight.bold,*/
              )

          )
              :Text(""),
        ]
    );
  }




}


