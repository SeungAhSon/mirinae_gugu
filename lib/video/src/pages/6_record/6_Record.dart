import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Record extends StatefulWidget {
  final records;
  const Record({
    Key? key,
    required this.records,
  }) : super(key: key);

  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> {

  @override
  void initState() {
    super.initState();
  }

  late int _totalTime;
  late int _currentTime;
  double _percent = 0.0;
  int _selected = -1;
  bool isPlay=false;
  AudioPlayer advancedPlayer = AudioPlayer();

  int? oneopen;


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Audio List",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topCenter,
        child: ListView.builder(
          key: Key('builder ${oneopen.toString()}'),
          itemCount: widget.records!.length,
          shrinkWrap: true,
          reverse: true,
          itemBuilder: (BuildContext context, int i) {
            return Card(
              elevation: 5,
              child: ExpansionTile(
                key: Key(i.toString()), //attention
                initiallyExpanded: i == oneopen, //attention

                title: Text(
                  '녹음 파일 ${widget.records!.length - i}',
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: Text(
                  _getTime(filePath: widget.records![i].toString()),
                  style: TextStyle(color: Colors.black38),
                ),
                onExpansionChanged: ((newState) {
                  if (newState) {
                    setState(() {
                      _selected = i;
                      oneopen = i;
                      advancedPlayer.stop();
                      isPlay=false;
                      _percent = 0.0;

                    });
                  }
                  else
                    setState(() {
                      print('아닐때');
                      oneopen = -1;
                    });
                }),
                children: [
                  Container(
                    height: 100,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LinearProgressIndicator(
                          minHeight: 5,
                          backgroundColor: Colors.black,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                          value: _selected == i ? _percent : 0,
                        ),
                        Row(
                          children: [
                            (isPlay)? _Presso(
                                ico: Icons.pause,
                                onPressed: () {
                                  setState(() {
                                    isPlay=false;
                                  });
                                  advancedPlayer.pause();
                                }): _Presso(
                                ico: Icons.play_arrow,
                                onPressed: () {
                                  setState(() {
                                    isPlay=true;
                                  });
                                  advancedPlayer.play(widget.records!.elementAt(i),
                                      isLocal: true);
                                  setState(() {});
                                  setState(() {
                                    _selected = i;
                                    _percent = 0.0;
                                  });
                                  advancedPlayer.onPlayerCompletion.listen((_) {
                                    setState(() {
                                      _percent = 0.0;
                                    });
                                  });
                                  advancedPlayer.onDurationChanged.listen((duration) {
                                    setState(() {
                                      _totalTime = duration.inMicroseconds;
                                    });
                                  });
                                  advancedPlayer.onAudioPositionChanged
                                      .listen((duration) {
                                    setState(() {
                                      _currentTime = duration.inMicroseconds;
                                      _percent = _currentTime.toDouble() /
                                          _totalTime.toDouble();
                                    });
                                  });
                                }),
                            _Presso(
                                ico: Icons.stop,
                                onPressed: () {
                                  advancedPlayer.stop();
                                  setState(() {
                                    _percent = 0.0;
                                  });
                                }),
                            _Presso(
                                ico: Icons.delete,
                                onPressed: () {
                                  Directory appDirec =
                                  Directory(widget.records.elementAt(i));
                                  appDirec.delete(recursive: true);
                                  Fluttertoast.showToast(msg: "파일이 삭제되었습니다.");
                                  setState(() {
                                    widget.records
                                        .remove(widget.records.elementAt(i));
                                  });
                                }),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },

        ),

      ),
    );
  }

  String _getTime({required String filePath}) {
    String fromPath = filePath.substring(
        filePath.lastIndexOf('/') + 1, filePath.lastIndexOf('.'));
    if (fromPath.startsWith("1", 0)) {
      DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(fromPath));
      int year = dateTime.year;
      int month = dateTime.month;
      int day = dateTime.day;
      int hour = dateTime.hour;
      int min = dateTime.minute;
      String dato = '$year-$month-$day--$hour:$min';
      return dato;
    } else {
      return "No Date";
    }
  }



}

class _Presso extends StatelessWidget {
  final IconData ico;
  final VoidCallback onPressed;

  const _Presso({Key? key, required this.ico,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 48.0,
      child: RaisedButton(
          child: Icon(
            ico,
            color: Colors.white,
          ),
          onPressed: onPressed),
    );
  }
}