import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() {
  runApp(const xylophone());
}

class xylophone extends StatelessWidget {
  const xylophone({super.key});
  void playsound(int soundnumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundnumber.wav'));
  }

  Expanded buildkey(int n, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playsound(n);
        },
        child: const Text(''),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(1, Colors.red),
              buildkey(2, Colors.green),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.orange),
              buildkey(5, Colors.purple),
              buildkey(6, Colors.grey),
              buildkey(7, Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
