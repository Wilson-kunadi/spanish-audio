import 'package:flutter/material.dart';
import 'package:spanish_audio_app/spain_audio_app.dart';

void main(List<String> args) => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spanish Audio App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: spain_audio_app(),
    );
  }
}
