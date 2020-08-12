import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(
    XylophoneApp()
  );
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({int soundNumber, MaterialColor color}){
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          color: color
      ),
      flex: 1,
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
            children: <Widget>[
              buildKey(soundNumber: 1, color: Colors.red),
              buildKey(soundNumber:2, color: Colors.orange),
              buildKey(soundNumber:3, color: Colors.yellow),
              buildKey(soundNumber:4, color: Colors.green),
              buildKey(soundNumber:5, color: Colors.blue),
              buildKey(soundNumber:6, color: Colors.purple),
            ]
          ),
        ),
      ),
    );
  }
}
