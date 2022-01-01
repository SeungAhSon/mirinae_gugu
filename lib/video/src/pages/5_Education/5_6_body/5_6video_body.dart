import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_speech/google_speech.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:mirinae_gugu/video/src/pages/noise_meter.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sound_stream/sound_stream.dart';
import '../../1_Loading.dart';
import '5_6pageview.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:mirinae_gugu/video/src/pages/6_record/6_audio_recorder.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';


class video_Body_6 extends StatefulWidget {
  video_Body_6({Key? key, required this.index}) : super(key: key);

  @override
  _video_Body createState() => _video_Body();
  int index;

}

class _video_Body extends State<video_Body_6> {
  late PageController _pageController;
  List<String> FavoriteButton = [
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false",
    "false"
  ];
  bool finish = false;
  List<bool> favorite = <bool>[
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
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
  List<String> Questiontitle = [
    "1. 공책",
    "2. 교실",
    "3. 교과서",
    "4. 교무실",
    "5. 교복",
    "6. 교훈",
    "7. 급식",
    "8. 낙서",
    "9. 대화",
    "10. 등교",
    "11. 발표",
    "12. 사물함",
    "13. 선생님",
    "14. 소개",
    "15. 수돗가",
    "16. 수업",
    "17. 숙제",
    "18. 실내화",
    "19. 연필",
    "20. 우유",
    "21. 운동장",
    "22. 이름",
    "23. 일기",
    "24. 지우개",
    "25. 짝",
    "26. 책가방",
    "27. 청소도구",
    "28. 친구",
    "29. 칠판",
    "30. 학년"
  ];

  //record
  late Directory? appDir;

  //late List<String>? records;

  IconData _recordIcon = Icons.mic;
  MaterialColor colo = Colors.green;
  RecordingStatus _currentStatus = RecordingStatus.Unset;
  bool stop = false;
  Recording? _current;

  // Recorder properties
  FlutterAudioRecorder? audioRecorder;

  @override
  void initState() {
    loadFavorite();
    super.initState();
    saved();
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

  checkPermission() async {
    if (await Permission.contacts
        .request()
        .isGranted) {
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
    if (statuses[Permission.microphone] == PermissionStatus.granted) {
      _currentStatus = RecordingStatus.Initialized;
      _recordIcon = Icons.mic;
    } else {}
  }

  @override
  void dispose() {
    _recorder.stop();
    _audioStreamSubscription?.cancel();
    _audioStream?.close();
    controller.dispose();
    if(audioRecorder != null){
      audioRecorder!.stop();
    }

    appDir = null;
    _currentStatus = RecordingStatus.Unset;
    audioRecorder = null;
    _pageController.dispose();
    super.dispose();
  }


  void streamingRecognize() async {
    if (mounted){
      _audioStream = BehaviorSubject<List<int>>();
      _audioStreamSubscription = _recorder.audioStream.listen((event) {
        if (!_audioStream!.isClosed)
          _audioStream?.add(event);
      });

      await _recorder.start();
      if (!mounted) return;
      setState(() {
        recognizing = true;
      });


      //서비스 계정. assets 폴더에 api key 넣음
      final serviceAccount = ServiceAccount.fromString(
          '${(await rootBundle.loadString(
              'assets/lejinhy-speech-to-text-11be68205205.json'))}');
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
          if (this.mounted) {
            //responseText += currentText;
            setState(() {
              //text = responseText;
              recognizeFinished = true;
            });
          }
        } else {
          if (this.mounted) {
          setState(() {
            text = currentText;
            recognizeFinished = true;
          });}
        }

      },

          onDone: () {
            if (this.mounted) {
        setState(() {

          recognizing = false;

        });
      }});
    }
  }


  //마이크 stop 했을 때
  void stopRecording() async {
    await _recorder.stop();
    await _audioStreamSubscription?.cancel();
    await _audioStream?.close();
    if (!mounted) return;
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

  Future<void> loadFavorite() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      favorite = (prefs.getStringList("favorite_6") ?? <bool>[])
          .map((value) => value == 'true')
          .toList();
    });
  }
  Future<void> saved() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (this.mounted) {
      setState(() {
        favorite[widget.index] = true;
      });
    }
    await prefs.setStringList(
        "favorite_6", favorite.map((value) => value.toString()).toList());
    if (this.mounted) {
    setState(() {
      favorite = (prefs.getStringList("favorite_6") ?? <bool>[])
          .map((value) => value == 'true')
          .toList();

    });}
  }

  void plus() async {
    if (widget.index != 31) {
      if (widget.index == 30) {
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
    if (widget.index != 31) {
      if (widget.index == 1) {
        setState(() {
          finish = true;
        });
      } else if (widget.index == 30) {
        setState(() {
          start = true;
        });
      }
    }
  }

  void back() async {
    if (widget.index != 31) {
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
    saved();
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
              style: TextStyle(fontSize: 24.sp + size, color: Colors.blue),
            ),
          ),

          leading: Semantics(
            label: "이전 페이지로 이동",
    child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
            iconSize: 25,
            icon: Icon(Icons.arrow_back),
          ),
          ),
          actions: <Widget>[
            Container(
                height: 47.h,
                width: 47.w,
                color: Colors.white.withOpacity(0)
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
                    backcolor1(),//유튜브 뒤에 흰색 배경
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
                Semantics(
                    label: "전면 카메라",
                    child: SizedBox(

                  height: (MediaQuery.of(context).size.height -
                      height2 -
                      MediaQuery.of(context).padding.top) *
                      0.341,
                  child: backcolor3(),
                ),),

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
                                  Semantics(
                                    label: "받아쓰기 노트",
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        border: Border.all(color: Colors.grey),
                                        //width:5,
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                  ),),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.83, 0, 0, 10),
                                    child:Semantics(
                                      label: "",

                                    child:
                                    Column(
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
                                        Text("다시", style: TextStyle(height: 0.2.h,fontSize: 10.sp,color: Colors.black), textAlign: TextAlign.center),
                                      ],
                                    ),)
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 30, right: 30,),
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
                            child: Semantics(
                                label: "성량 확인 바",
                            child: Container(
                              alignment: Alignment.center,
                              child: Noise(),)
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
                              height: MediaQuery.of(context).size.height * 0.08, //크기 8%
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Semantics(
      label: "",
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              IconButton(
                  icon: finish
                      ? Icon(Icons.arrow_back_ios_sharp,
                      color: Colors.white.withOpacity(0), size: 30,semanticLabel: "첫번째 페이지 입니다",)
                      : Icon(Icons.arrow_back_ios_sharp,
                      color: Colors.black, size: 30),
                  onPressed: () async {
                    back();
                    //onPageChanged: _questionController.updateTheQnNum,
                  }),
              Container(
                  padding: EdgeInsets.only(bottom: 5,),
                  child: finish
                      ? Text("", style: TextStyle(height: 0.05.h,fontSize: 10.sp,color: Colors.white.withOpacity(0)),textAlign: TextAlign.center,)
                      : Text("이전", style: TextStyle(height: 0.05.h,fontSize: 10.sp,color: Colors.black),textAlign: TextAlign.center,)

              )

            ]),),
    Semantics(
    label: "",
        child: Column(
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
              padding: EdgeInsets.only(bottom: 3),
              child: Text("받아쓰기", style: TextStyle(height: 0.05.h,fontSize: 12.sp,color: Colors.black),textAlign: TextAlign.center,),
            )
          ],
        ),),
        stop == false
            ? Semantics(
            label: "",
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              IconButton(
                padding: EdgeInsets.only(bottom: 3,),
                onPressed: () async {

                  await _onRecordButtonPressed();
                  if (!mounted) return;
                  setState(() {});

                }, icon: Icon(_recordIcon, color: Colors.green, size: 28,
              ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3,),
                child: Text("녹음하기", style: TextStyle(height: 0.05.h,fontSize: 12.sp,color: Colors.black),textAlign: TextAlign.center,),
              )
            ]
        ))
            :
    Semantics(
    label: "",
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              IconButton(
                padding: EdgeInsets.zero,
                onPressed:
                _currentStatus != RecordingStatus.Unset ? _stop : null,
                icon: Icon(Icons.stop, color: Colors.green, size: 28),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 3,),
                child: Text("녹음중", style: TextStyle(height: 0.05.h,fontSize: 12.sp,color: Colors.black),textAlign: TextAlign.center,),
              )
            ]),

    ),    Semantics(
            label: "",
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              IconButton(
                  icon: start
                      ? Icon(Icons.arrow_forward_ios_sharp,
                      color: Colors.white.withOpacity(0), size: 30,semanticLabel: "마지막 페이지 입니다")
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
                          ? Text("", style: TextStyle(height: 0.05.h,fontSize: 10.sp,color: Colors.white.withOpacity(0)),textAlign: TextAlign.center,)
                          : Text("다음", style: TextStyle(height: 0.05.h,fontSize: 10.sp,color: Colors.black),textAlign: TextAlign.center,)
                  )
              )
            ])
        )],
    );
  }

  Widget backcolor1() {
    // 카메라 위 유튜브 부분
    var height2 = AppBar().preferredSize.height;
    return Container(
      height: (MediaQuery.of(context).size.height -
          height2 -
          MediaQuery.of(context).padding.top) *
          0.38,
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
          0.27,
      color: Colors.white,
    );
  }

  Widget backcolor3() {
    //카메라 아래
    return Container(
      color: Colors.white.withOpacity(0),
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
                fontSize: 20.0.sp + size, //사이즈 조절 필요
                height: 1.h,
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
    //var DATE = DateFormat.yMd('ko_KR').add_jm();
    //String dato2 = "${DATE.toString()}.wav";
    //print(DateFormat.yMd('ko_KR'));
    //String dato = "${(DateTime.now().millisecondsSinceEpoch + 32400000).toString()}.wav";
    initializeDateFormatting('ko_KR', null);

    var test = DateFormat.yMd('ko_KR');
    print(new DateFormat.yMMMd('ko_KR').add_jm().format(new DateTime.now()));

    var timeZoneOffset = DateTime.now().timeZoneOffset.inMilliseconds;
    var localTimestamp = (DateTime.now().millisecondsSinceEpoch);
    print('local Timestamp : $localTimestamp');
    String dato = "${localTimestamp.toString()}.wav";

    print('날짜');
    print(dato);
    Directory appDirec =
    Directory("${appDir!.path}/$jrecord/");

    bool exists = await Directory('/storage/emulated/0/Android/data/com.example.recorder_ttest/files/Audiorecords/').exists();

    if (await appDirec.exists()) {
      String patho = "${appDirec.path}$dato";
      print("path for file11 ${patho}");
      audioRecorder = FlutterAudioRecorder(patho, audioFormat: AudioFormat.WAV);
      await audioRecorder!.initialized;
    } else {
      appDirec.create(recursive: true);
      Fluttertoast.showToast(msg: "마이크를 누르면 녹음이 시작됩니다.");
      String patho = "${appDirec.path}$dato";
      audioRecorder = FlutterAudioRecorder(patho, audioFormat: AudioFormat.WAV);
      await audioRecorder!.initialized;
    }
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

      if (mounted) {
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
