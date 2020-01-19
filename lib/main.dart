import 'package:flutter/material.dart';

import 'lessons3/Guitarist.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Guitarist guitarist = Guitarist("Bob");

  @override
  Widget build(BuildContext context) {
    var text = guitarist.playPopMusic(guitarist.play());

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Musician"),
        ),
        body: Center(
          child: Text(
            text,
          style: TextStyle(
              fontSize:32.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue
          ),),
        ),
      )
    );
  }
}


