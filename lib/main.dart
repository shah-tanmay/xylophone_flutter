import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, int color}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(color)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
          ),
        ),
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
            children: [
              buildKey(color: 0xFFFF0000, soundNumber: 1),
              buildKey(color: 0xFFFF9000, soundNumber: 2),
              buildKey(color: 0xFFFFFF00, soundNumber: 3),
              buildKey(color: 0xff00FF00, soundNumber: 4),
              buildKey(color: 0xAA0000FF, soundNumber: 5),
              buildKey(color: 0xFF4B0082, soundNumber: 6),
              buildKey(color: 0xFF800080, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
