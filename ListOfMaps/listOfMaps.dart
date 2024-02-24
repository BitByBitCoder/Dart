void main() {
  List<Map<String, int>> listofmap = [
    {'Math': 10, 'English': 60, 'CS': 80},
    {'Math': 10, 'English': 60, 'CS': 80},
    {'Math': 10, 'English': 60, 'CS': 80},
    {'Math': 10, 'English': 60, 'CS': 80}
  ];

  // for (var element in listofmap) {
  //   print(element.keys);
  // }

  listofmap
      .map((e) => e.forEach((key, value) {
            print("$key:$value");
          }))
      .toList();
}
