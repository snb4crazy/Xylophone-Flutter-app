import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numButton) {
    final player = new AudioCache();
    player.play('note$numButton.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    playSound(1);
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green.shade900,
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                  child: Text(''),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {
                    playSound(7);
                  },
                  child: Text(''),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
