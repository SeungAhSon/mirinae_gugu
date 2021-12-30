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
  Duration currentTime = Duration();
  Duration totalTime = Duration(seconds: 1);


  @override
  void dispose() {
    advancedPlayer.pause();
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
          reverse: false,
          itemBuilder: (BuildContext context, int i) {
            return Card(
              elevation: 5,
              child: ExpansionTile(
                key: Key(i.toString()),
                initiallyExpanded: i == oneopen,

                title: Text(
                  _getTime(filePath: widget.records![i].toString()),
                  style: TextStyle(color: Colors.black),
                ),
                onExpansionChanged: ((newState) {
                  if (newState) {
                    setState(() {
                      _selected = i;
                      oneopen = i;
                      advancedPlayer.stop();
                      isPlay=false;
                      _percent = 0.0;
                      _getDuration(totalTime);
                      print('all');
                      print(totalTime);

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
                          //value: (currentTime.inMilliseconds / totalTime.inMilliseconds) * 1.0,

                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                _getDuration(currentTime),
                                style: TextStyle(color: Colors.blue),
                              ),
                              Text(
                                _getDuration(totalTime),
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    currentTime = new Duration(seconds: 0);
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
                                      print('chdtlrks');
                                      _totalTime = duration.inMicroseconds;
                                      totalTime = duration;
                                      print( _totalTime);
                                    });
                                  });
                                  advancedPlayer.onAudioPositionChanged
                                      .listen((duration) {
                                    setState(() {
                                      _currentTime = duration.inMicroseconds;
                                      currentTime = duration;
                                      print('tlrks');
                                      print(_currentTime);
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
                                    currentTime = new Duration();
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
                                    advancedPlayer.stop();
                                    _percent = 0.0;
                                    oneopen = -1;
                                  });
                                }),
                          ],
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
      int sec = dateTime.second;
      String dato = '$year-$month-$day--$hour:$min:$sec';
      return dato;
    } else {
      return "No Date";
    }
  }

  String _getDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  _setupAudioPlayer(filePath) async {
    currentTime = new Duration(seconds: 0);
    print(filePath);
    await advancedPlayer.setUrl(filePath);
    print(advancedPlayer.setUrl(filePath));
    //await advancedPlayer.setUrl(widget.records.path);
    await advancedPlayer.setReleaseMode(ReleaseMode.STOP);

    advancedPlayer.onAudioPositionChanged.listen((Duration p) {
      print('Current position: $p');
      setState(() => currentTime = p);
    });

    advancedPlayer.onDurationChanged.listen((Duration d) {
      print('Max duration: $d');
      setState(() => totalTime = d);
    });
    return totalTime;
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