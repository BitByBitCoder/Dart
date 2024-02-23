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

void main() {
  var (age, name) = functionrecode();
  print(age);
}

(int, String) functionrecode() {
  print('hello');

  return (12, 'kk');
}
