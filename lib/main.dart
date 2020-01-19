import 'package:flutter/material.dart';
import 'lessons1/Mercedes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Mercedes gle = Mercedes.model("GLE");
  Mercedes gls = Mercedes.model("GLS");
  Mercedes gkalss = Mercedes.model("GKalss");

  @override
  Widget build(BuildContext context) {
    setSpeed(100);
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
    var list = [speed, speed * 2];
    list.forEach(gle.setSpeed);
  }

}


