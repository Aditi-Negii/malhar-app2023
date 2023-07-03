// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';



class BuzzerPage extends StatefulWidget {
  const BuzzerPage({super.key});




  @override
  State<BuzzerPage> createState() => _BuzzerPageState();
}

class _BuzzerPageState extends State<BuzzerPage> {
  late AudioPlayer player;
  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: GestureDetector(
              onTap: () async {
                await player.setAsset('assets/audio/giant_bell.mp3');
                player.play();
              },
              child: Image.asset("assets/images/bell.png"))),
    );
  }
}
