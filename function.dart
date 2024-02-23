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

void main() {
  String name = stdin.readLineSync()!;
  var a = functionrecode(name: name);
  print(a);
}

String? functionrecode({String? name}) {
  print(name! + 'lu');
  return name + 'klu'; //<- ends the function
}
