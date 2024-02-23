// // hriat sa chu zir lo ang

// void main() {
//   secondFunct(firstfunc);
// }

// void firstfunc() {
//   print('hello');
// }

// void secondFunct(firstfunc) {
//   print('now we print the first');
//   firstfunc();
// }

// records

// void main() {
//   var a = functionrecode();
//   print(a);
// }

// (int, String) functionrecode() {
//   print('hello');

//   return (12, 'kk');
// }

import 'dart:io';

/////
// ///
// void main() {
//   var a = functionrecode();
//   print(a.$1);
// }

// (int, String) functionrecode() {
//   print('hello');

//   return (12, 'kk');
// }

//pattern record

// void main() {
//   var (age, name) = functionrecode();
//   print(age);
// }

// (int, String) functionrecode() {
//   print('hello');

//   return (12, 'kk');
// }

// problem awm thei

// void main() {
//   String name = 'rivann';
//   var a = functionrecode(name: name);
//   print(a);
// }

// String? functionrecode({required String name}) {
//   print(name + 'lu');
//   return name + 'klu'; //<- ends the function
//   print('hello');
// }

//dead code <-

// void main() {
//   String name = stdin.readLineSync()!;
//   var a = functionrecode(name: name);
//   print(a);
// }

// String? functionrecode({String? name}) {
//   print(name! + 'lu');
//   return name + 'klu'; //<- ends the function
// }

//positional leh named ti pawh dan
//tih pawlh don chuan positional hmasak a ngai
// void main() {
//   int age = 24;
//   String name = stdin.readLineSync()!;
//   var a = functionrecode(age, name: name);
//   print(a);
// }

// String? functionrecode(int age, {required String name}) {
//   print("$name $age");
//   return ''; //<- ends the function
// }

// record aiah class
// class Person {
//   String name;
//   int age;

//   Person(this.name, this.age);
// }

// void main() {
//   Person person = functionrecode(name: 'hruaia', age: 22);
//   print(person.age);
// }

// Person functionrecode({required String? name, required int? age}) {
//   return Person(name!, age!); //<- ends the function
// }

////////////////////////////////////////////////////////////////////////////////////////////////////////

// void main() {
//   final stuff = functionrecode();

//   print(stuff.name);
// }

// ({String name, int age}) functionrecode() {
//   String name = 'hello';
//   int age = 23;
//   return (name: 'hruaia', age: 22); //<- ends the function
// }
////////////////////////////////////////////////////
// callback
// void main() {
//   funk();
//   second(funk);
// }

// void funk() {
//   print('hello');
// }

// void second(Function callfunc) {
//   callfunc();
//   print('again');
// }

void main() {
  for (int i = 10; i < 100; i++) {
    String name = stdin.readLineSync()!;
    print("$name \n");
  }
}
