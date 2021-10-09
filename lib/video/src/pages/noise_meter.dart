import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:noise_meter/noise_meter.dart';

//소음 측정 animation_bar
class Noise extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Noise();
}

class _Noise extends State<StatefulWidget> {
  NoiseMeter noiseMeter = new NoiseMeter((err) {});
  StreamSubscription<NoiseReading>? subscription;

  final int limitDecibel = 150;
  int minlimitDecibel = 50;
  int currentDecibel = 0;

  @override
  void initState() {
    super.initState();
    this.subscription = noiseMeter.noiseStream.listen(this.onData);
  }

  @override
  void dispose() {
    subscription!.cancel();
    super.dispose();
  }


  @override
  void onData(NoiseReading sound) {
    setState(() {
      var decibel = sound.maxDecibel.toInt();
      this.currentDecibel = decibel;
    });
  }

  bool isSafeDecibel() {
    //print(currentDecibel);
    return currentDecibel < limitDecibel && currentDecibel > minlimitDecibel;
  }

  double currentDecibelPercent() {
    if (currentDecibel > limitDecibel) {
      return 1;
    } else if (currentDecibel < minlimitDecibel){
      return 1;
    }
    else {
      return currentDecibel / limitDecibel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Padding(
                  padding: EdgeInsets.only(top:30),
                  child: Column(
                    children: [
                      FAProgressBar(
                        size: 15,
                        currentValue: currentDecibel,
                        maxValue: limitDecibel,
                        animatedDuration: const Duration(milliseconds: 300),
                        direction: Axis.horizontal,
                        verticalDirection: VerticalDirection.up,
                        progressColor: isSafeDecibel() ? Colors.green : Colors.red,
                        backgroundColor: Colors.grey,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}