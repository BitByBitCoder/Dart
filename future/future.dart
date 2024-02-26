void main() async {
  var f = fu();
  f.whenComplete(() => print('completed'));
}

Future<String> fun() async {
  return 'dfd';
}

Future<int> fu() {
  return Future.delayed(Duration(seconds: 2), () async {
    return 2;
  });
}
