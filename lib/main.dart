import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numButton) {
    final player = new AudioCache();
    player.play('note$numButton.wav');
  }

  Expanded buildButton({Color color, int numSound}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(numSound);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildButton(color: Colors.red, numSound: 1),
                buildButton(color: Colors.orange, numSound: 2),
                buildButton(color: Colors.yellow, numSound: 3),
                buildButton(color: Colors.green, numSound: 4),
                buildButton(color: Colors.green.shade900, numSound: 5),
                buildButton(color: Colors.blue, numSound: 6),
                buildButton(color: Colors.purple, numSound: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
