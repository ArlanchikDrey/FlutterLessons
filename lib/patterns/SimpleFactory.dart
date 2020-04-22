void main(){
  orderPizza("PizzaPep") ?? print("your type is wrong");
}
Pizza orderPizza(String type) {
  Pizza pizza = PizzaFactory().createPizza(type);

  if(pizza != null)
    pizza.bake();

  return pizza;
}

class PizzaFactory{
  Pizza createPizza(String type){
    Pizza pizza;
    switch(type){
      case "PizzaPep":
        pizza = PizzaPep();
        break;
      case "PizzaCher":
        pizza = PizzaCher();
    }

    return pizza;
  }
}

abstract class Pizza{
  void bake();
}

class PizzaPep implements Pizza{
  @override
  void bake() {
    print(toString());
  }
}

class PizzaCher implements Pizza{
  @override
  void bake() {
    print(toString());
  }
}
