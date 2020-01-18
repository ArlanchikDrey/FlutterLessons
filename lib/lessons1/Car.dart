 class Car{
  int _speed = 0;
  String name;
  String model;

  Car(){
    this.name = "name";
    this.model = "model";
  }
  /*
  * Увеличиваем значение поля при вызове метода на его аргумент**/
  void setSpeed(int speed){
    _speed = _speed + speed;
  }

  @override
  String toString() {
    return "Марка = $name\nMодель = $model\nСкорость = $_speed";
  }
}