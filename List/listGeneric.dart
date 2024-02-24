void main() {
  List<Student> students = [
    Student('hruaia'),
    Student('joel'),
    Student('hrllo')
  ];

  print(students[0].name);
}

class Student {
  String name;
  Student(this.name);
}
