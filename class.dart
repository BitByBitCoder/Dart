// void main() {
// //camelCase
// //PascalCase

//   var cook = Cookie();
//   print(Cookie().shape); // he tia i tih hain cookie object thar i siam zel
// }

// class Cookie {
// //variables
// //function

//   String shape = 'Circle';
//   double size = 12.2;

// // it is a function but to be precise if inside a class it is a method
// //method
//   void baking() {
//     print('baking has started');
//   }

//   bool isCooling() {
//     return false;
//   }
// }

//tam zawk chu i hriat sa

//private variable
//private variable are private to a file not a class

// class Person {
//   String name;

//   Person({required this.name});

//   int _age = 1;

//   int get age => _age;
//   set setHeight(int h) {
//     _age = h;
//   }
// }

// void main() {
//   Person person = Person(name: 'name');

//   print(person._age);
// }

// Static

// class Constants {
//   static final color = 'blue';
//   static int a = 10;

//   static int giveMeSomeValue() {
//     return a;
//   }
// }

// void main() {
//   print(Constants.color);
// }

// in static method normal non static cannot be used

///////////////////////////
///
///inheritance

class Vehicle {
  int speed = 10;
  bool isEngineWorking = false;
  bool isLightOn = true;
  void accelerate() {
    speed += 10;
  }
}

class Car extends Vehicle {
  int a = 0;
}

void main() {
  Vehicle vehicle = Vehicle();
  vehicle.accelerate();
  Car car = Car();
}
