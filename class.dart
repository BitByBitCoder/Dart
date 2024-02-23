void main() {
//camelCase
//PascalCase

  var cook = Cookie();
  print(Cookie().shape);
}

class Cookie {
//variables
//function

  String shape = 'Circle';
  double size = 12.2;

// it is a function but to be precise if inside a class it is a method
//method
  void baking() {
    print('baking has started');
  }

  bool isCooling() {
    return false;
  }
}
