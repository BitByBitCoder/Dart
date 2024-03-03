// var weather = 6;

// void main() {
//   print('hello');
//   fuck();
//   functionWhere();
//   literalsTest();
// }

// void fuck() {
//   ///dkfjdkjfkdjkfjd
//   //fdfs
//   switch (weather) {
//     case 1:
//       print('fuck you');
//     case 2:
//       print('fuck second');
//     case 3:
//       print('fuck third');
//     case 4:
//       print('fuck fourth');
//     case 5:
//   }
// }

// void functionWhere() {
//   final number = [1, 2, 3, 4, 5, 6, 7];
//   List<int> result = number.where((element) => element < 5).toList();

//   List<String> words = ['hruaia', 'patea'];
//   List<String> resultofwords =
//       words.where((element) => element != 'hruaia').toList();
//   print(resultofwords.toString());
// }

// void literalsTest() {
//   // List a = [1, 2, 3];
//   // List b = [4, 5, 6];

//   // List c = [...a, ...b];
//   // print(c);

//   List<Map<String, dynamic>> a = [
//     {"first": 'hruaia'}
//   ];
//   List<Map<String, dynamic>> b = [
//     {"second": 'hruaia2'}
//   ];

//   List<Map<String, dynamic>> c = [...a, ...b];
//   print(c);
// }

void main() {
  List<String> Alist = ['hruaia', 'kapatea'];

  // var a = Alist.where((element) => element.startsWith('h'));
  // print(a);

  // var b = Alist.indexOf('hruaia');
  // print(b.runtimeType);
  // List<String> c = Alist.where((element) => element == Alist[b]).toList();
  // print(c.length);

  //map

  // List<String> d = Alist.map((e) => e.toUpperCase()).toList();
  // print(d);

  // //any/every
  // List<int> Anumber = [2, 3, 4, 5];
  // var e = Anumber.any((element) => element.isEven);
  // var f = Anumber.every(
  //   (element) => element.isEven,
  // );
  // print("$e,$f");

  // //string ve thung
  // var g = Alist.any((element) => element.startsWith('h'));
  // print(g);

  var names = ["John", "Mary", "Bob"];

// Test if any name starts with 'M'
  var startsWithM = names.any((name) => name.startsWith('M')); // true

  var people = [Person("John", 20), Person("Sarah", 23), Person("David", 17)];

// Test if everyone is over 18
  var allOver18 = people.every((person) => person.age > 18); // false
}

class Person {
  final String name;
  final int age;

  Person(this.name, this.age);
}

void function1(show, name) {
  //calculation
  var age = 25;

  show(name, age);
}

void show(name, age) {
  print('$name $age');
}
