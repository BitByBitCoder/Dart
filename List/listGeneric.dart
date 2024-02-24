void main() {
  List<Student> students = [
    Student('hruaia'),
    Student('joel'),
    Student('hrllo')
  ];

  students.add(Student('fuck'));
  for (var element in students) {
    print(element.name);
  }

  students[2] = Student('that'); //add ni lo in replace a tum

  for (var element in students) {
    print(element.name);
  }
  print('================');
  students.insert(0, Student('first'));
  for (var element in students) {
    print(element.name);
  }
  print('=====================');
  students.removeWhere((students) => students.name == 'first');
  for (var element in students) {
    print(element.name);
  }
}

class Student {
  String name;
  Student(this.name);
}
