import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherForecastPage extends StatefulWidget{
  final String cityName;

  WeatherForecastPage(this.cityName);

  @override
  State<StatefulWidget> createState() {
    return _WeatherForecastPageState();
  }

}

class _WeatherForecastPageState extends State<WeatherForecastPage>{
  List<Weather> weatherForecast = [
    Weather(DateTime.now(), 20 , 90, "04d"),
    Weather(DateTime.now().add(Duration(hours: 3)), 23 , 50, "03d"),
    Weather(DateTime.now().add(Duration(hours: 6)), 25 , 50, "02d"),
    Weather(DateTime.now().add(Duration(hours: 9)), 28 , 50, "01d")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sample ListView",
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Weather"),
        ),
        body: ListView(
          children: weatherForecast.map((Weather weather){
            return WeatherListItem(weather);
    }).toList())));
  }

}

class WeatherListItem extends StatelessWidget{
  static var _dateFormat = DateFormat('yyyy-MMM-dd-hh: mm');

  final Weather weather;

  WeatherListItem(this.weather);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [Expanded(
          flex: 3,
          child: Text(_dateFormat.format(weather.dateTime))),
        Expanded(
            flex: 1,
            child: Text(weather.degree.toString() + "C")),
        Expanded(
            flex: 1,
            child: Image.network(weather.getIconURl())
      ),
    ]));
  }

}

class Weather{
  static const String weather_url = "http://openweathermap.org/img/wn/";

  DateTime dateTime;
  num degree;
  int clouds;
  String icon_url;

  String getIconURl(){
    return weather_url + icon_url + ".png";
  }

  Weather(this.dateTime,this.degree,this.clouds,this.icon_url);

}
