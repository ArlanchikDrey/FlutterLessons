import 'package:flutter/material.dart';
import 'lessons1/Mercedes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Mercedes gle = Mercedes.model("GLE");
  Mercedes gls = Mercedes.model("GLS");
  Mercedes gkalss = Mercedes.model("GKalss");

  @override
  Widget build(BuildContext context) {
    setSpeed(300);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cars"),
        ),
        body: Center(
          child: Text(
            gle.toString(),
          style: TextStyle(
              fontSize:32.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue
          ),),
        ),
      )
    );
  }

  void setSpeed(int speed){
    gle.setSpeed(speed);
  }

}


