import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:spanish_audio_app/numberAudio.dart';

class spain_audio_app extends StatefulWidget {
  @override
  _spain_audio_appState createState() => _spain_audio_appState();
}

class _spain_audio_appState extends State<spain_audio_app> {
  AudioCache audioPlayer = AudioCache();

  List<numberAudio> numberList = [
    numberAudio("one.wav", Colors.amber, "One"),
    numberAudio("two.wav", Colors.blue, "Two"),
    numberAudio("three.wav", Colors.green, "Three"),
    numberAudio("four.wav", Colors.yellow, "Four"),
    numberAudio("five.wav", Colors.cyan, "Five"),
    numberAudio("six.wav", Colors.brown[700], "Six"),
    numberAudio("seven.wav", Colors.blueGrey, "Seven"),
    numberAudio("eight.wav", Colors.grey, "Eight"),
    numberAudio("nine.wav", Colors.indigo[700], "Nine"),
    numberAudio("ten.wav", Colors.black26, "Ten"),
  ];

  play(String uri) async {
    await audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spanish Audio"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage("images/logo.png"),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(10),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: this.numberList.length,
                itemBuilder: (context, i) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.25,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: this.numberList[i].buttonColor,
                    onPressed: () {
                      this.play(this.numberList[i].audioUri);
                    },
                    child: Text(
                      "${this.numberList[i].bt_text}",
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
