

import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_speech/config/streaming_recognition_config.dart';
import 'package:google_speech/google_speech.dart';
import 'package:google_speech/speech_to_text.dart';
import 'package:mirinae_gugu/video/src/pages/6_record/6_Record.dart';
import 'package:mirinae_gugu/video/src/pages/6_record/6_audio_recorder.dart';
import 'package:mirinae_gugu/video/src/pages/7_2_Syllable_Detail/15_g/15_g_youtube.dart';
import 'package:mirinae_gugu/video/src/pages/noise_meter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sound_stream/sound_stream.dart';

import '../../1_Loading.dart';

class video_Body_15 extends StatefulWidget {
  video_Body_15({Key? key, required this.index}) : super(key: key);
  @override
  _video_Body createState() => _video_Body();
  int index;

}

class _video_Body extends State<video_Body_15> {
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
  List<String> Questiontitle = ["1. 아니 진짜ㅋㅋ", "2. 이제되네", "3","4","5","6","7","8","9","10","11", "12", "13","14","15","16","17","18","19","20","21", "22", "23","24","25","26","27","28","29","30"];

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

  void dispose() {
    controller.dispose();
    super.dispose();
    appDir = null;
    _currentStatus = RecordingStatus.Unset;
    audioRecorder = null;
    _pageController.dispose();
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
              '${Questiontitle[widget.index-1]}',
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
                              itemCount: 10,
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
                            color: Colors.grey[200],
                            child: Stack(children: <Widget>[
                              Container(
                                //color: Colors.white,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    //width:5,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: textprint(),
                              ),
                            ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Container(
                            height: (MediaQuery.of(context).size.height -
                                height2 -
                                MediaQuery.of(context).padding.top) *
                                0.04,
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
                              height: (MediaQuery.of(context).size.height -
                                  height2 -
                                  MediaQuery.of(context).padding.top) *
                                  0.065, //크기 8%
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
                                0.002,
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
      children: [
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
          height: 300,
          child: IconButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Record(records: [],),
                  ),
                );
              },
              icon: Icon(Icons.mic, color: Colors.green, size: 45)
          ),
        ),
        InkWell(
          child: RaisedButton(
            onPressed:() {
              reset();
            },
            padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),

            child: Text("글씨 지우개",style: TextStyle(color: Colors.white,fontSize: 16+size,fontWeight: FontWeight.bold),),

            color: Color(0xff4573CB),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
          ),
        ),

        IconButton(
          onPressed: recognizing ? stopRecording : streamingRecognize,
          icon: recognizing
              ? Icon(Icons.mic, color: Colors.red, size: 30)
              : Icon(Icons.mic, color: Colors.blue, size: 30),
        ),

        stop == false
            ?
        RaisedButton(
          color: Colors.white,
          onPressed: () async {
            await _onRecordButtonPressed();
            setState(() {});
          },
          child: Column(
            children: [
              Container(
                width: 30,
                height: 30,
                child: Icon(
                  _recordIcon,
                  color: Colors.orange,
                  size: 30,
                ),
              ),
            ],
          ),
        )
            :RaisedButton(
          color: Colors.white,
          onPressed: _currentStatus != RecordingStatus.Unset
              ? _stop
              : null,
          child: Container(
            width: 30,
            height: 30,
            child: Icon(
              Icons.stop,
              color: Colors.orange,
              size: 30,
            ),
          ),
        ),

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
                fontSize: 20.0+size, //사이즈 조절 필요
                height: 1.75,
                /*fontWeight: FontWeight.bold,*/
              ))
              : Text(""),
        ]);
  }

  _onFinish_test() {
    appDir!.list().listen((onData) {
    }).onDone(() {
      setState(() {});
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
    String jrecord = 'Audiorecords';
    String dato = "${DateTime.now().millisecondsSinceEpoch.toString()}.wav";
    Directory appDirec =
    Directory("${appDir!.path}/$jrecord/");

    bool exists = await Directory('/storage/emulated/0/Android/data/com.example.recorder_ttest/files/Audiorecords/').exists();
    print(exists);
    if (await appDirec.exists()) {
      String patho = "${appDirec.path}$dato";
      print("path for file11 ${patho}");
      audioRecorder = FlutterAudioRecorder(patho, audioFormat: AudioFormat.WAV);
      await audioRecorder!.initialized;
    } else {
      appDirec.create(recursive: true);
      Fluttertoast.showToast(msg: "Start Recording , Press Start");
      String patho = "${appDirec.path}$dato";
      print("path for file22 ${patho}");
      audioRecorder = FlutterAudioRecorder(patho, audioFormat: AudioFormat.WAV);
      await audioRecorder!.initialized;
    }
  }

  _start() async {
    await audioRecorder!.start();
    var recording = await audioRecorder!.current(channel: 0);
    setState(() {
      _current = recording!;
    });

    const tick = const Duration(milliseconds: 50);
    new Timer.periodic(tick, (Timer t) async {
      if (_currentStatus == RecordingStatus.Stopped) {
        t.cancel();
      }

      var current = await audioRecorder!.current(channel: 0);
      // print(current.status);
      setState(() {
        _current = current!;
        _currentStatus = _current!.status!;
      });
    });
  }

  _stop() async {
    var result = await audioRecorder!.stop();
    await Fluttertoast.showToast(msg: "Stop Recording , File Saved");
    _onFinish_test();
    setState(() {
      _current = result!;
      _currentStatus = _current!.status!;
      _current!.duration = null;
      _recordIcon = Icons.mic;
      stop = false;
    });
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
      Fluttertoast.showToast(msg: "Start Recording");
      setState(() {
        _currentStatus = RecordingStatus.Recording;
        /*_recordIcon = Icons.pause;*/
        /*colo = Colors.red;*/
        stop = true;
      });
    } else {
      Fluttertoast.showToast(msg: "Allow App To Use Mic");
    }
  }

  reset()
  {
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