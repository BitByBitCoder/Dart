void main() {
  List<Student> students = [
    Student('hruaia', 40, true),
    Student('joel', 20, false),
    Student('hrllo', 30, false)
  ];

  students.add(Student('fuck', 60, false));
  for (var element in students) {
    print(element.name);
  }

  print('========filter bu marks======');

  List<Student> st = students.where((element) => element.marks >= 40).toList();
  for (var element in st) {
    print(element.name);
  }
  print('========filter by name======');

  List<Student> filterName =
      students.where((element) => element.name != 'hruaia').toList();
  for (var element in filterName) {
    print(element.name);
  }
  print('========filter by favorate======');

  List<Student> filterFavorte =
      students.where((element) => element.isFavorateStudent == true).toList();
  for (Student element in filterFavorte) {
    print(element.name);
  }
}

class Student {
  final String name;
  final int marks;
  final bool isFavorateStudent;
  Student(this.name, this.marks, this.isFavorateStudent);
}
