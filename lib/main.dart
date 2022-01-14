import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                for (int i = 1; i < 8; i++)
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        final player = AudioCache();
                        player.play('note$i.wav');
                      },
                      child: Container(
                        color: Colors.blue[i * 100],
                      ),
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
