void main() {
  print('hello');
  Employee employee1 = Employee('hruaia', EmployeeType.swe);
  Employee employee2 = Employee('jjj', EmployeeType.marketing);
  Employee employee3 = Employee('jjj', EmployeeType.marketing);
  // the problem you can input anything no boundaries

  employee1
      .fn(); // ka mistake chu helai tang hian print ka lo tum a print hi return lo ah chuan work lo
}

class Employee {
  final String name;
  final EmployeeType type;

  Employee(this.name, this.type);

  void fn() {
    switch (type) {
      case EmployeeType.swe:
        print('software engineer');
        break;
      case EmployeeType.marketing:
        print('marketing');
        break;
      default:
        print('finance');
    }
  }
}

//enum you need to globally declare in your program
enum EmployeeType { swe, finance, marketing }
