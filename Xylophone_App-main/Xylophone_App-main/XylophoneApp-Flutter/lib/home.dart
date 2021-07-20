import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // AudioPlayer audioPlayer = AudioPlayer();
  // AudioPlayerState audioPlayerState = AudioPlayerState.PAUSED;
  // AudioCache audioCache;
  // String path = 'assets/music1.mp3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade800,
        centerTitle: true,
        title: Text('Xylophone'),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: EdgeInsets.only(right: 20),
              width: 500,
              height: 100,
              child: button(1, Colors.red),
            ),
            Container(
              padding: EdgeInsets.only(right: 40),
              width: 500,
              height: 100,
              child: button(2, Colors.blue),
            ),
            Container(
              padding: EdgeInsets.only(right: 60),
              width: 500,
              height: 100,
              child: button(3, Colors.green),
            ),
            Container(
              padding: EdgeInsets.only(right: 80),
              width: 500,
              height: 100,
              child: button(4, Colors.yellow),
            ),
            Container(
              padding: EdgeInsets.only(right: 100),
              width: 500,
              height: 100,
              child: button(5, Colors.orange),
            ),
            Container(
              padding: EdgeInsets.only(right: 120),
              width: 500,
              height: 100,
              child: button(6, Colors.purple),
            ),
            Container(
              padding: EdgeInsets.only(right: 140),
              width: 500,
              height: 100,
              child: button(7, Colors.pink),
            )
          ],
        ),
      )),
    );
  }
}

button(int number, Color color) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: color, onPrimary: Colors.black),
      onPressed: () {
        AssetsAudioPlayer.playAndForget(Audio('assets/note$number.wav'));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '$number',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            child: Icon(
              Icons.circle,
            ),
          )
        ],
      ));
}
