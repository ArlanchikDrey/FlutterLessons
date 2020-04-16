void main() {
  Beverage beverage = DarkRoas();
  beverage = Mocha(beverage);
  beverage = Whip(beverage);
  print("desp: ${beverage.getDescription()} coast: ${beverage.coast()}");
}

class DarkRoas extends Beverage{

  DarkRoas() {
    description = "DarkRoase";
  }
  @override
  double coast() => 20.0;
  
}

abstract class Beverage{
  String description = "Unknown Beverage";
  
  String getDescription() => description;
  
  double coast();
}

class Mocha extends CondimentDecorator{
  Beverage beverage;
  
  Mocha(Beverage beverage) {        
    this.beverage = beverage;    
  }
 
  @override
  String getDescription() => "${beverage.getDescription()},  Mocha";
  
  @override
  double coast() => 15.0 + beverage.coast();
}

class Whip extends CondimentDecorator{
  Beverage beverage;
  
  Whip(Beverage beverage) {        
    this.beverage = beverage;    
  }
  
  @override
  String getDescription() => "${beverage.getDescription()},  Whip";
  
  @override
  double coast() => 25.0 + beverage.coast();
}

abstract class CondimentDecorator extends Beverage{
  String getDescription();
} 
