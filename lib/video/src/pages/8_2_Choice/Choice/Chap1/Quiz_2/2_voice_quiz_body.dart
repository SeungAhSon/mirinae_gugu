import 'package:flutter/material.dart';
import 'package:mirinae_gugu/video/src/pages/1_Loading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import 'package:sound_stream/sound_stream.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_speech/google_speech.dart';
import 'package:flutter/services.dart';
import 'package:rxdart/rxdart.dart';
import 'package:mirinae_gugu/video/src/pages/8_2_Choice/Q_Widget/result_voice_quiz.dart';

class Questions{
  String qText;
  Questions(this.qText);
}

class StartPage_2 extends StatefulWidget {
  @override
  _StartPageState_2 createState() => _StartPageState_2();
}

class _StartPageState_2 extends State<StartPage_2> {
  final RecorderStream _recorder = RecorderStream();

  bool recognizing = false;
  bool recognizeFinished = false;
  var realtext = '';
  StreamSubscription<List<int>>? _audioStreamSubscription;
  BehaviorSubject<List<int>>? _audioStream;
  //text 안녕하세요
  String quiz = '안녕하세요';
  bool b = false;
  var testtext;
  int myindex = 0;
  String myoption = '';



  @override
  void initState() {
    super.initState();
    finish();
    _recorder.initialize();
  }

//
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
        //responseText += currentText;
        setState(() {
          //text = responseText;
          recognizeFinished = true;
        });
      } else {
        setState(() {
          realtext = currentText;
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
  RecognitionConfig _getConfig() =>
      RecognitionConfig(
          encoding: AudioEncoding.LINEAR16,
          model: RecognitionModel.command_and_search,
          enableAutomaticPunctuation: false,
          sampleRateHertz: 16000,
          languageCode: 'ko-KR');

  //
  var counter=0;
  var questionnum = 1;

  List qList =[
    Questions("친구"),
    Questions("소개"),
    Questions("선생님"),
    Questions("짝"),
    Questions("지우개"),
    Questions("대화"),
    Questions("이름"),
    Questions("운동장"),
    Questions("교실"),
    Questions("학년"),
  ];

  var score=0;

  checkWin(String userChoice , BuildContext context)
  {
    String newtext = userChoice.replaceAll(' ', '');
    if(newtext==qList[counter].qText.replaceAll(' ', '')) {
      score= score+10;
      final snackbar = SnackBar(
        margin: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width*0.2,
            MediaQuery.of(context).size.height*0.3,
            MediaQuery.of(context).size.width*0.2,
            MediaQuery.of(context).size.height*0.4),
        duration: Duration(milliseconds : 3000), //500
        backgroundColor: Colors.lime[200],
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        content: Container(
          child: Icon(Icons.brightness_1_outlined, color: Colors.orange, size: 170),
        ),);
      Scaffold.of(context).showSnackBar(snackbar);
    }
    else{
      score = score+0;
      final snackbar = SnackBar(
        margin: EdgeInsets.fromLTRB(
            MediaQuery.of(context).size.width*0.2,
            MediaQuery.of(context).size.height*0.3,
            MediaQuery.of(context).size.width*0.2,
            MediaQuery.of(context).size.height*0.4),
        duration: Duration(milliseconds : 3000),
        backgroundColor: Colors.lime[200],
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        content: Container(
          child: Icon(Icons.clear_rounded, color: Colors.orange, size: 170),
          margin: const EdgeInsets.fromLTRB(0,0,0,230),
        ),
      );
      Scaffold.of(context).showSnackBar(snackbar);
    }
  }

  nextpage() {
    setState(() {
      realtext = '';
      if(counter<qList.length-1) {
        questionnum = questionnum + 1;
        print(questionnum);
        counter = counter +1;
      }
      else if (counter == qList.length-1){
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScorePage(lastscore: score),
          ),
        );
      }
    });
  }

  reset()
  {
    setState(() {
      //counter = 0;
      //score =0;
      realtext = '';
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Builder(
        builder : (BuildContext context) => Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: <Widget>[


              Padding(padding: EdgeInsets.only(top: 20)),


              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
/*                    Text("Score : $score /100",style: TextStyle(color : Colors.brown ,
                        fontSize: 20,fontWeight: FontWeight.bold),),*/
                    Text("문제 : $questionnum / 10",style: TextStyle(color : Colors.brown ,
                        fontSize: 20+size,fontWeight: FontWeight.bold),),

                  ],
                ),

              ),

              Padding(padding: EdgeInsets.only(top: 20)),

              Container(
                width: MediaQuery.of(context).size.width*0.8,
                height: MediaQuery.of(context).size.height*0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.lime[200]
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.fromLTRB(50,30,50,20),
                        child: Text(qList[counter].qText,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0+size,),)),
                    Container(
                      //margin: const EdgeInsets.fromLTRB(3,3,3,3),
                        child: Text('를 읽어주세요!',
                          style: TextStyle(fontSize: 18.0+size,),)
                    )
                  ],
                ),
              ),
              //Padding(padding: EdgeInsets.only(top: 30)),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                    child: Stack(
                      // text 프린트 해주는 함수 호출
                        children: <Widget>[
                          Container(
                            width: 330,
                            height: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10), //모서리를 둥글게
                                border: Border.all(color: Colors.black12, width: 3),
                                color: Color(0xffE4EDFF)
                            ), //테두리
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: textprint(),
                                )],),),
/*                  Container(
                              width: 150,
                              height: 34,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30), //모서리를 둥글게
                                  color: Color(0xff4573CB)
                              ),
                            ),*/
                        ]
                    )
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 50)),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  RaisedButton(
                    onPressed:() {
                      checkWin(realtext.replaceAll(' ', ''), context);
                      reset();
                      Timer(Duration(seconds: 1), () {
                        nextpage();
                      });
                    },
                    padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
                    child: Text("채점",style: TextStyle(color: Colors.white,fontSize: 16+size,fontWeight: FontWeight.bold),),

                    color:  Color(0xff4573CB),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),

                  Container(
                    //height: 150,
                    //width: 100,
                    child: IconButton(
                      onPressed: recognizing ? stopRecording : streamingRecognize,
                      icon: recognizing
                          ? Icon(Icons.mic, color: Colors.red, size: 45)
                          : Icon(Icons.mic, color: Color(0xff4573cb), size: 45),
                    ),
                    //margin: const EdgeInsets.fromLTRB(0,40.0,0,0),
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
                  )

                ],
              ),
            ],
          ),
        ),
      ),


    );
  }

  Widget textprint() {
    if(recognizeFinished)
      return Text(
          realtext,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            letterSpacing: 1.0,
            fontSize: 22.5+size,
            height: 1.75,
          )
      );
    else
      return Text("");

  }


  void finish() async{
    SharedPreferences s = await SharedPreferences.getInstance();
    s.setBool("11111",false);
  }

}


