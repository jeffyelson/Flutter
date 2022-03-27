import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int SoundNumber) {
    final player = AudioCache();
    player.play('note$SoundNumber.wav');
  }

  Expanded buildKey({Color color, int SoundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(SoundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, SoundNumber: 1),
              buildKey(color: Colors.blue, SoundNumber: 2),
              buildKey(color: Colors.green, SoundNumber: 3),
              buildKey(color: Colors.yellow, SoundNumber: 4),
              buildKey(color: Colors.teal, SoundNumber: 5),
              buildKey(color: Colors.orange, SoundNumber: 6),
              buildKey(color: Colors.purple, SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
