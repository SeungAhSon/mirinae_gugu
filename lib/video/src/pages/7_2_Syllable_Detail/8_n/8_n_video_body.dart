

import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_speech/config/streaming_recognition_config.dart';
import 'package:google_speech/google_speech.dart';
import 'package:google_speech/speech_to_text.dart';
import 'package:mirinae_gugu/video/src/pages/6_record/6_audio_recorder.dart';
import 'package:mirinae_gugu/video/src/pages/7_2_Syllable_Detail/8_n/8_n_youtube.dart';
import 'package:mirinae_gugu/video/src/pages/noise_meter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sound_stream/sound_stream.dart';

import '../../1_Loading.dart';

class video_Body_8 extends StatefulWidget {
  video_Body_8({Key? key, required this.index}) : super(key: key);
  @override
  _video_Body createState() => _video_Body();
  int index;

}

class _video_Body extends State<video_Body_8> {
  late PageController _pageController;
  bool finish = false;
  CameraController controller =
  CameraController(cameras[1], ResolutionPreset.veryHigh);

  //final VideoHomeController controller= Get.put(VideoHomeController());
  final RecorderStream _recorder = RecorderStream();
  bool start = false;
  bool recognizing = false;
  bool recognizeFinished = false;
  String text = '';
  StreamSubscription<List<int>>? _audioStreamSubscription;
  BehaviorSubject<List<int>>? _audioStream;
  late bool favoriteButton_0_01_01 = false;
  List<String> Questiontitle = ["1. 나", "2. 냐", "3. 너","4. 녀","5. 노","6. 뇨","7. 누","8. 뉴","9. 느","10. 니"];

  //record
  late Directory? appDir;
  //late List<String>? records;


  IconData _recordIcon = Icons.mic_none;
  MaterialColor colo = Colors.orange;
  RecordingStatus _currentStatus = RecordingStatus.Unset;
  bool stop = false;
  Recording? _current;
  // Recorder properties
  late FlutterAudioRecorder? audioRecorder;

  @override
  void initState() {
    super.initState();
    _recorder.initialize();
    controller.initialize().then((_) {
      setState(() {});
    });
    _pageController = PageController();

    //record
    super.initState();
    checkPermission();
    getExternalStorageDirectory().then((value) {
      appDir = value!;
      Directory appDirec = Directory("${appDir!.path}/Audiorecords/");
      appDir = appDirec;
      appDir!.list().listen((onData) {
      }).onDone(() {
        setState(() {});
      });
    });
  }

  checkPermission()async{

    if (await Permission.contacts.request().isGranted) {
      // Either the permission was already granted before or the user just granted it.
    }

// You can request multiple permissions at once.
    Map<Permission, PermissionStatus> statuses = await [
      Permission.microphone,
      Permission.storage,
    ].request();
    print(statuses[Permission.microphone]);
    print(statuses[Permission.storage]);
    //bool hasPermission = await FlutterAudioRecorder.hasPermissions ?? false;
    if (statuses[Permission.microphone]==PermissionStatus.granted) {
      _currentStatus = RecordingStatus.Initialized;
      _recordIcon = Icons.mic;
    }else
    {

    }
  }

  @override
  void dispose() {
    _recorder.stop();
    _audioStreamSubscription?.cancel();
    _audioStream?.close();
    controller.dispose();

    appDir = null;
    _currentStatus = RecordingStatus.Unset;
    audioRecorder = null;
    _pageController.dispose();
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


  void plus() async {
    if (widget.index != 11) {
      if (widget.index == 10) {
        setState(() {
          start = true;
        });
      } else {
        setState(() {
          _pageController.jumpToPage(widget.index++);
          start = false;
          finish = false;
        });
      }
    }
  }

  void backplusload() async {
    if (widget.index != 11) {
      if (widget.index == 1) {
        setState(() {
          finish = true;
        });
      } else if (widget.index == 10) {
        setState(() {
          start = true;
        });
      }
    }
  }

  void back() async {
    if (widget.index != 11) {
      if (widget.index == 1) {
        setState(() {
          finish = true;
        });
      } else {
        setState(() {
          _pageController.jumpToPage(widget.index--);
          finish = false;
          start = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    backplusload();
    var height2 = AppBar().preferredSize.height;

    if (!controller.value.isInitialized) {
      return Container();
    }

    return Scaffold(
        appBar: AppBar(
          //이 부분은 상단바 반응형으로 만든거. 근데 없어도 될듯
          //toolbarHeight: MediaQuery.of(context).size.height/(14/1),
          backgroundColor: Colors.white,

          title: Center(
            child: Text(
              '${Questiontitle[widget.index - 1]}',
              style: TextStyle(fontSize: 20 + size, color: Colors.blue),
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
            IconButton(
              onPressed: (){
              },
              icon: Icon(Icons.arrow_back,color: Colors.white.withOpacity(0)),

            ),
          ],
        ),
        body: Stack(
          children: [
            //카메라
            Center(
                child: Container(
                    padding: EdgeInsets.all(20),
                    child:
                    CameraPreview(controller)) //CameraPreview(controller)/
            ),

            //상단 슬라이드
            Column(
              children: [
                Stack(
                  children: [
                    backcolor1(), //유튜브 뒤에 흰색 배경
                    Column(
                      children: [
                        //여긴 유튜브 영상
                        Padding(
                          padding: EdgeInsets.only(top: 0), //상단 슬라이드 밑에 선
                          child: Container(
                            height: (MediaQuery.of(context).size.height -
                                height2 -
                                MediaQuery.of(context).padding.top) *
                                0.38,
                            child: PageView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              controller: _pageController,
                              onPageChanged: updateTheQnNum,
                              itemCount: 30,
                              itemBuilder: (context, index) => video_page(
                                id: widget.index,
                              ),
                            ),

                            //child: youtube(context),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  //중간 여백
                  height: (MediaQuery.of(context).size.height -
                      height2 -
                      MediaQuery.of(context).padding.top) *
                      0.35,
                ),
                Stack(
                  children: [
                    backcolor2(), //카메라 밑 부분 흰색 배경
                    Column(
                      children: [
                        //텍스트
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: (MediaQuery.of(context).size.height -
                                height2 -
                                MediaQuery.of(context).padding.top) *
                                0.1,
                            alignment: Alignment.center,
                            child: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        border: Border.all(color: Colors.grey),
                                        //width:5,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.85, 0, 0, 10),
                                    child:Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children:[
                                        IconButton(
                                          padding: EdgeInsets.zero,
                                          icon:ImageIcon(AssetImage('assets/retry.png'),color:Colors.black,size:15),
                                          onPressed: () {
                                            reset();
                                          },
                                        ),
                                        Text("다시", style: TextStyle(height: 0.2,fontSize: 10,color: Colors.black), textAlign: TextAlign.center),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: textprint(),
                                  ),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(3),
                          child: Container(
                            height: (MediaQuery.of(context).size.height -
                                height2 -
                                MediaQuery.of(context).padding.top) *
                                0.03,
                            alignment: Alignment.center,
                            color: Colors.grey[200],
                            child: Container(
                              alignment: Alignment.center,
                              child: Noise(),
                            ),
                          ),
                        ),

                        //하단 바 상단선
                        Padding(
                          padding: EdgeInsets.only(bottom: 0), //상단 슬라이드 밑에 선
                          child: Container(
                            height: (MediaQuery.of(context).size.height -
                                height2 -
                                MediaQuery.of(context).padding.top) *
                                0.002,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),

                        //하단 바
                        Padding(
                          padding: EdgeInsets.only(
                              left:
                              MediaQuery.of(context).size.width / (70 / 1),
                              right:
                              MediaQuery.of(context).size.width / (70 / 1)),
                          //left:MediaQuery.of(context).size.width/(12/1),right: MediaQuery.of(context).size.width/(12/1),),
                          child: Container(
                              padding: EdgeInsets.zero,
                              height: (MediaQuery.of(context).size.height -
                                  height2 -
                                  MediaQuery.of(context).padding.top) *
                                  0.08, //크기 8%
                              color: Colors.white.withOpacity(0),
                              child: _buttonZone()),
                        ),

                        //하단 바 아래
                        Padding(
                          padding: EdgeInsets.only(bottom: 0), //0.063남음
                          child: Container(
                            height: (MediaQuery.of(context).size.height -
                                height2 -
                                MediaQuery.of(context).padding.top) *
                                0.001,
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  Widget _buttonZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              IconButton(
                  icon: finish
                      ? Icon(Icons.arrow_back_ios_sharp,
                      color: Colors.white.withOpacity(0), size: 30)
                      : Icon(Icons.arrow_back_ios_sharp,
                      color: Colors.black, size: 30),
                  onPressed: () async {
                    back();
                    //onPageChanged: _questionController.updateTheQnNum,
                  }),
              Container(
                  padding: EdgeInsets.only(bottom: 5,),
                  child: finish
                      ? Text("이전", style: TextStyle(height: 0.05,fontSize: 10,color: Colors.white.withOpacity(0)),textAlign: TextAlign.center,)
                      : Text("이전", style: TextStyle(height: 0.05,fontSize: 10,color: Colors.black),textAlign: TextAlign.center,)

              )

            ]),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            IconButton(
              padding: EdgeInsets.only(bottom: 3,),
              onPressed: recognizing ? stopRecording : streamingRecognize,
              icon: recognizing
                  ? Icon(Icons.mic, color: Colors.red, size: 28)
                  : Icon(Icons.mic, color: Colors.blue, size: 28),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3,),
              child: Text("받아쓰기", style: TextStyle(height: 0.05,fontSize: 12,color: Colors.black),textAlign: TextAlign.center,),
            )
          ],
        ),
        stop == false
            ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () async {

                  await _onRecordButtonPressed();
                  if (!mounted) return;
                  setState(() {});

                }, icon: Icon(_recordIcon, color: Colors.green, size: 28,
              ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3,),
                child: Text("녹음하기", style: TextStyle(height: 0.05,fontSize: 12,color: Colors.black),textAlign: TextAlign.center,),
              )
            ]
        )
            : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              IconButton(
                padding: EdgeInsets.only(bottom: 3,),
                onPressed:
                _currentStatus != RecordingStatus.Unset ? _stop : null,
                icon: Icon(Icons.stop, color: Colors.green, size: 28),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3,),
                child: Text("녹음하기", style: TextStyle(height: 0.05,fontSize: 12,color: Colors.black),textAlign: TextAlign.center,),
              )
            ]),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              IconButton(
                  icon: start
                      ? Icon(Icons.arrow_forward_ios_sharp,
                      color: Colors.white.withOpacity(0), size: 30)
                      : Icon(Icons.arrow_forward_ios_sharp,
                      color: Colors.black, size: 30),
                  onPressed: () async {
                    plus();
                    //onPageChanged: _questionController.updateTheQnNum,
                  }),
              Padding(
                  padding: EdgeInsets.only(bottom: 5,),
                  child: Container(padding:EdgeInsets.zero,
                      child: start
                          ? Text("다음", style: TextStyle(height: 0.05,fontSize: 10,color: Colors.white.withOpacity(0)),textAlign: TextAlign.center,)
                          : Text("다음", style: TextStyle(height: 0.05,fontSize: 10,color: Colors.black),textAlign: TextAlign.center,)
                  )
              )
            ])
      ],
    );
  }

  Widget backcolor1() {
    // 카메라 위 유튜브 부분
    var height2 = AppBar().preferredSize.height;
    return Container(
      height: (MediaQuery.of(context).size.height -
          height2 -
          MediaQuery.of(context).padding.top) *
          0.37,
      color: Colors.white,
    );
  }

  Widget backcolor2() {
    //카메라 아래
    var height2 = AppBar().preferredSize.height;
    return Container(
      height: (MediaQuery.of(context).size.height -
          height2 -
          MediaQuery.of(context).padding.top) *
          0.25,
      color: Colors.white,
    );
  }

  Widget backcolor3() {
    var height2 = AppBar().preferredSize.height;
    return Container(
      height: (MediaQuery.of(context).size.height -
          height2 -
          MediaQuery.of(context).padding.top) *
          0.38,
      color: Colors.white,
    );
  }

//텍스트 프린트
  Widget textprint() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (recognizeFinished)
              ? Text(text,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                letterSpacing: 1.0,
                fontSize: 20.0 + size, //사이즈 조절 필요
                height: 1.75,
                /*fontWeight: FontWeight.bold,*/
              ))
              : Text(""),
        ]);
  }

  _onFinish_test() {
    appDir!.list().listen((onData) {
    }).onDone(() {
      if (this.mounted) {
        setState(() {});
      }
    });
  }

  Future<void> _onRecordButtonPressed() async {
    switch (_currentStatus) {
      case RecordingStatus.Initialized:
        {
          _recordo();
          break;
        }
      case RecordingStatus.Stopped:
        {
          _recordo();
          break;
        }
      default:
        break;
    }
  }

  _initial() async {
    Directory? appDir = await getExternalStorageDirectory();

    String jrecord = "Audiorecords";
    String dato = "${(DateTime.now().millisecondsSinceEpoch -  54000000).toString()}.wav";
    //String dato = "${(detroitTime.millisecondsSinceEpoch).toString()}.wav";
    print('날짜임');
    print(dato);
    print(DateTime.now().millisecondsSinceEpoch-32400000);
    Directory appDirec =
    Directory("${appDir!.path}/$jrecord/");

    bool exists = await Directory('/storage/emulated/0/Android/data/com.example.recorder_ttest/files/Audiorecords/').exists();
    print(exists);
    if (await appDirec.exists()) {
      String patho = "${appDirec.path}$dato";
      print("path for file11 ${patho}");
      audioRecorder = FlutterAudioRecorder(patho, audioFormat: AudioFormat.WAV);
      await audioRecorder!.initialized;
      bool exists = await Directory('/storage/emulated/0/Android/data/com.example.recorder_ttest/files/Audiorecords/').exists();
      print(Directory('/storage/emulated/0/Android/data/com.example.recorder_ttest/files/Audiorecords/'));
    } else {
      appDirec.create(recursive: true);
      //Fluttertoast.showToast(msg: "Start Recording , Press Start");
      String patho = "${appDirec.path}$dato";
      print("path for file22 ${patho}");
      audioRecorder = FlutterAudioRecorder(patho, audioFormat: AudioFormat.WAV);
      await audioRecorder!.initialized;
    }
    print('end');
  }


  _start() async {
    await audioRecorder!.start();
    var recording = await audioRecorder!.current(channel: 0);
    if (this.mounted) {
      setState(() {
        _current = recording!;
      });
    }

    const tick = const Duration(milliseconds: 50);
    new Timer.periodic(tick, (Timer t) async {
      if (_currentStatus == RecordingStatus.Stopped) {
        t.cancel();
      }

      var current = await audioRecorder!.current(channel: 0);
      // print(current.status);
      if (this.mounted) {
        setState(() {
          _current = current!;
          _currentStatus = _current!.status!;
        });
      }
    });
    print('start');
  }

  _stop() async {
    var result = await audioRecorder!.stop();
    Fluttertoast.showToast(msg: "녹음 파일이 저장되었습니다");
    _onFinish_test();
    if (this.mounted) {
      setState(() {
        _current = result!;
        _currentStatus = _current!.status!;
        _current!.duration = null;
        _recordIcon = Icons.mic;
        stop = false;
      });
    }
  }


  Future<void> _recordo() async {

    Map<Permission, PermissionStatus> statuses = await [
      Permission.microphone,
      Permission.storage,
    ].request();
    print(statuses[Permission.microphone]);
    print(statuses[Permission.storage]);
    //bool hasPermission = await FlutterAudioRecorder.hasPermissions ?? false;
    if (statuses[Permission.microphone]==PermissionStatus.granted) {

      /* }
    bool hasPermission = await FlutterAudioRecorder.hasPermissions ?? false;
    if (hasPermission) {*/
      await _initial();
      await _start();
      Fluttertoast.showToast(msg: "녹음 시작");
      if (this.mounted) {
        setState(() {
          _currentStatus = RecordingStatus.Recording;
          /*_recordIcon = Icons.pause;*/
          /*colo = Colors.red;*/
          stop = true;
        });
      }
    } else {
      Fluttertoast.showToast(msg: "마이크 사용을 허용해주세요");
    }
  }

  reset() {

    setState(() {
      //counter = 0;
      //score =0;
      text = '';
    });

  }

  void updateTheQnNum(int index) {
    index = index + 1;
  }
}
