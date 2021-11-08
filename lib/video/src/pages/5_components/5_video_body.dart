import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_speech/google_speech.dart';
import 'package:mirinae_gugu/video/src/components/youtube.dart';
import 'package:mirinae_gugu/video/src/controller/quiz_controller.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sound_stream/sound_stream.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../1_Loading.dart';



class video_Body extends StatefulWidget {
  const video_Body({
    Key ?key,
    required this.index,
  }) : super(key: key);
  @override
  _video_Body createState() => _video_Body();
  final int index;


}

class _video_Body extends State<video_Body>{


  CameraController controller =
  CameraController(cameras[1], ResolutionPreset.veryHigh);

  //final VideoHomeController controller= Get.put(VideoHomeController());
  final RecorderStream _recorder = RecorderStream();

  bool recognizing = false;
  bool recognizeFinished = false;
  String text = '';
  StreamSubscription<List<int>>? _audioStreamSubscription;
  BehaviorSubject<List<int>>? _audioStream;

  @override
  void initState() {
    super.initState();
    _recorder.initialize();
    controller.initialize().then((_) {


      setState(() {});
    });
  }




  void dispose() {
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







  @override
  Widget build(BuildContext context) {
    var height2 = AppBar().preferredSize.height;
    QuestionController _questionController = Get.put(QuestionController());
    if (!controller.value.isInitialized) {
      return Container();
    }

    return Scaffold(
        appBar: AppBar(
        //이 부분은 상단바 반응형으로 만든거. 근데 없어도 될듯
        //toolbarHeight: MediaQuery.of(context).size.height/(14/1),
        backgroundColor: Colors.white,
        title:
        Obx(
    () => Text.rich(

      TextSpan(
        text:
        "Question ${_questionController.questionNumber.value}",
        style: TextStyle(fontSize: 15, color: Colors.blue),
        children: [
          TextSpan(
            text: "/10",
            style: TextStyle(fontSize: 15, color: Colors.blue),
          ),

        ],
      ),
    ),
    ),

    leading: IconButton(
    onPressed: () {
    Navigator.pop(context);
    },
    color: Colors.black,
    iconSize: 25,
    icon: Icon(Icons.arrow_back),

    ),

    actions: <Widget>[

      ],
      ),








      body: Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Obx(
                      () => Text.rich(

                    TextSpan(
                      text:
                      "Question ${_questionController.questionNumber.value}",
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                      children: [
                        TextSpan(
                          text: "/10",
                          style: TextStyle(fontSize: 15, color: Colors.blue),
                        ),

                      ],
                    ),
                  ),
                ),
              ), //번째 문제 표시
              Padding(
                padding: EdgeInsets.only(top:0), //상단 슬라이드 밑에 선
                child: Container(
                  height: (MediaQuery.of(context).size.height - height2-MediaQuery.of(context).padding.top) * 0.74,
                  child: PageView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    controller: _questionController.pageController,
                    onPageChanged: _questionController.updateTheQnNum,
                    itemCount: _questionController.questions.length,
                    itemBuilder: (context, index) => ayotube(
                      question: _questionController.questions[index],
                      id: _questionController.questionNumber.value,
                    ),
                  ),

                  //child: youtube(context),

                ),
              ),
              SizedBox(height: (MediaQuery.of(context).size.height - height2-MediaQuery.of(context).padding.top) * 0.03),

              Text("영상 속 단어를 골라주세요", style: TextStyle(fontSize:20, fontWeight: FontWeight.bold, color: Colors.black)),


            ],
          ),
        )
      ],
    )
    );
  }
}
