void main() {
  print('for loop');

  List<String> a = ['1', '2', '3'];

  List b = a.map((e) {
    if (e == '1') {
      return e.toString();
    }
  }).toList();
  print(b);
}
