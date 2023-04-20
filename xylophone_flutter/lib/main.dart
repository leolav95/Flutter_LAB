import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Widget BuildKey(Color keyColor, int soundNumber) {
    return (Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: keyColor,
            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.zero)),
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNumber.wav');
        },
        child: Text(""),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildKey(Colors.red, 1),
                BuildKey(Colors.orange, 2),
                BuildKey(Colors.yellow, 3),
                BuildKey(Colors.green, 4),
                BuildKey(Colors.teal, 5),
                BuildKey(Colors.blue, 6),
                BuildKey(Colors.purple, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
