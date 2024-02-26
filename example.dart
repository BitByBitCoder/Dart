class Vehicle {
  String engine = 'v1';
  int numberPlate = 22;
  String name = 'volvo';
}

class Car extends Vehicle {
  String color = 'red';
}

class Pol {
  String name;

  Pol(this.name);
}

void main() {
  // Vehicle vehicle = Vehicle();
  // Car car = Car();

  // print(vehicle.name);

  var p1 = Pol('hruaia');
  var p2 = Pol('hruaia');
  var p3 = Pol('hruaia');
}
