import 'package:ones/lessons1/Car.dart';

class Mercedes extends Car{
  Mercedes.model(String model){
    this.name = "Mercedes";
    this.model = model;
  }

  /*
  * Увеличиваем значение поля при вызове метода на его аргумент**/
  void setSpeed(int speed){
    this.speed = this.speed + speed;
  }
}