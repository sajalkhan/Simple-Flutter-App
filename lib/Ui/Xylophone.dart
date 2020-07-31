import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: ()=> playSound(soundNumber),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildKey(color: Colors.pinkAccent.shade700, soundNumber: 1),
                buildKey(color: Colors.green.shade900, soundNumber: 2),
                buildKey(color: Colors.blue.shade900, soundNumber: 3),
                buildKey(color: Colors.red.shade900, soundNumber: 4),
                buildKey(color: Colors.yellowAccent.shade700, soundNumber: 5),
                buildKey(color: Colors.greenAccent.shade400, soundNumber: 6),
                buildKey(color: Colors.deepPurple.shade900, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
