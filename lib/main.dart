import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int note) {
    final player = AudioCache();
    player.play('note$note.wav');
  }

  Expanded buildKey({Color color, int musicNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(musicNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, musicNum: 1),
              buildKey(color: Colors.orange, musicNum: 2),
              buildKey(color: Colors.blue, musicNum: 3),
              buildKey(color: Colors.green, musicNum: 4),
              buildKey(color: Colors.teal, musicNum: 5),
              buildKey(color: Colors.yellow, musicNum: 6),
              buildKey(color: Colors.purple, musicNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
