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

// class Vehicle {
//   int speed = 10;
//   bool isEngineWorking = false;
//   bool isLightOn = true;
//   void accelerate() {
//     speed += 10;
//   }
// }

// class FlyingVehicle {
//   int flyingSpeed = 100000000;
// }

// class Car extends Vehicle {
//   // inherit from Vehicle class
//   int a = 0;
// }

// void main() {
//   Vehicle vehicle = Vehicle();
//   vehicle.accelerate();
//   Car car = Car();

//   car.isEngineWorking;
// }

// by gpt

// In Dart, a class can only extend one other class, known as single inheritance.
//  However, Dart supports implementing multiple interfaces through the
// use of mixins. Mixins allow you to reuse code in multiple class hierarchies. Here's a basic example:

// for the safry of the class field can be eqully can cause error multiple is not alloud

////////////////overide test
class Super {
  String superC = 'super';
  int speed() {
    return 22;
  }
}

class First extends Super {
  String superC = 'overide';
  String first = 'first';
}

class Second extends First {
  String second = 'second';
}

void main() {
  Second sec = Second();

  print(sec.superC);
}

//a data kal dan hi chu datatype leh a call na level hnaih dan a zir in leh overide in 
//overide hman chuanm a function inang nagai a type eroh ngai lo