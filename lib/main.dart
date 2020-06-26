import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Expanded buildKey(Color color, int soundNo) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(Colors.red,1),
            buildKey(Colors.orange,2),
            buildKey(Colors.yellow,3),
            buildKey(Colors.green,4),
            buildKey(Colors.teal,5),
            buildKey(Colors.blue,6),
            buildKey(Colors.purple,7)
          ]),
        ),
      ),
    );
  }
}

mixin $color {}
