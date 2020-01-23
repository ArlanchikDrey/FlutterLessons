import 'package:flutter/material.dart';
import 'package:ones/lessonsListView/Weather.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return WeatherForecastPage("Moscow");
  }
}

///// Stateless виджет не может менять свое состояние
//class Label extends StatelessWidget {
//  final String text;
//  Label(this.text);
//
//  @override
//  Widget build(BuildContext context) {
//    return DecoratedBox(
//      decoration: BoxDecoration(
//        color: Colors.amber[200]
//      ),
//      child: Padding(
//        padding: const EdgeInsets.all(8.0),
//        child: Text(text,
//        style: TextStyle(color: Colors.grey[700]),),
//      ),
//    );
//  }
//
//}

/////Stateful виджеты можно менять во времени исполнения, то есть они мутабельны
//class CounterWidget extends StatefulWidget{
//  @override
//  CounterWidgetState createState() => CounterWidgetState();
//}
/////Состояние виджета хранится в объекте класса State
//class CounterWidgetState extends State<StatefulWidget>{
//  int _count = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//        decoration: BoxDecoration(
//            borderRadius: BorderRadius.all(Radius.circular(8.0)),
//            color: Colors.amber[600]
//        ),
//      child: Row(
//        mainAxisSize: MainAxisSize.min,
//        mainAxisAlignment: MainAxisAlignment.center,
//        crossAxisAlignment: CrossAxisAlignment.center,
//        children: [
//          IconButton(
//          onPressed: () { _increment();},
//          icon: Icon(Icons.add),
//        ),
//          Text("$_count",style: TextStyle(fontSize: 20.0),),
//          IconButton(
//            onPressed: () { _decrement();},
//            icon: Icon(Icons.remove),
//          )],
//      ),
//    );
//  }
//
//  void _increment() {
//    //Когда нужно изменить состояние виджета вызываем State
//    setState(() {
//      _count++;
//    });
//  }
//  void _decrement() {
//    //Когда нужно изменить состояние виджета вызываем State
//    setState(() {
//      _count--;
//    });
//  }
//}

