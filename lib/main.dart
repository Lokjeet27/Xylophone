import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int data){
      final player = AudioPlayer();
      player.play(
        AssetSource("note$data.wav"),
      );
  }

  Expanded bulidkey({ Color color, int soundNumber}){
    return Expanded(
      child: ElevatedButton(
        child: Text("No-$soundNumber"),
        onPressed: () {
          playsound(soundNumber);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(color),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              bulidkey(color:Colors.red,soundNumber:1),
              bulidkey(color:Colors.orange,soundNumber:2),
              bulidkey(color: Colors.yellow,soundNumber:3),
              bulidkey(color: Colors.green,soundNumber:4),
              bulidkey(color: Colors.blue,soundNumber:5),
              bulidkey(color: Colors.indigo,soundNumber:6),
              bulidkey(color: Colors.grey,soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
