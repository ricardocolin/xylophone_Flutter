import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey(int sound, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          playSound(sound);
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1, Colors.teal),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.purple),
              buildKey(4, Colors.yellowAccent),
              buildKey(5, Colors.blueAccent),
              buildKey(6, Colors.brown),
              buildKey(7, Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
