void main() {
  print('for loop');
  List<Map<String, dynamic>> c = [
    {'name': 'hruaia', 'age': 23},
    {'name': 'hruaia', 'age': 23},
    {'name': 'hruaia', 'age': 23},
    {'name': 'hruaia', 'age': 23},
    {'name': 'hruaia', 'age': 23},
  ];

  final person = c.map((e) => Person.fromJson(e)).toList();

  for (var element in person) {
    print(element.age);
  }
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(name: json['name'], age: json['age']);
  }
}
