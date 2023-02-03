import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    Audio.load('assets/note$soundNumber.wav')
      ..play()
      ..dispose();
  }

  Expanded buildButton(Color color, int buttonNumber) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(buttonNumber);
        },
        child: Container(
          color: color,
        ),
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
              buildButton(Colors.red, 1),
              buildButton(Colors.orange, 2),
              buildButton(Colors.yellow, 3),
              buildButton(Colors.greenAccent, 4),
              buildButton(Colors.green, 5),
              buildButton(Colors.blue, 6),
              buildButton(Colors.blue.shade300, 7),
            ],
          ),
        ),
      ),
    );
  }
}
