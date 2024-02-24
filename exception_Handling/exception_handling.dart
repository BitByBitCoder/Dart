void main() {
  try {
    print(10 ~/ 3);
    print(10 / 0);
    print(10 ~/ 0);
    print('hruia');
  } catch (e) {
    print('error');
  } finally {
    print('i dont fucking care i want to run.I always execute');
  }
  print('hruia');
}
