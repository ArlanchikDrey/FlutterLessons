class Car{
  int speed = 0;
  String name;
  String model;

  Car(){
    this.name = "name";
    this.model = "model";
  }

  @override
  String toString() {
    return "Марка = $name\nMодель = $model\nСкорость = $speed";
  }
}