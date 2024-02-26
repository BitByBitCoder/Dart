void main() {
  try {
    print(10 ~/ 3);
    print(10 / 0);
    print(10 ~/ 0);
    print('hruia');
  } on Exception catch (e) {
    // on alloud us to catch somekind of exception or error ex firebase firestore
    print(e);
  } catch (e) {
    print('an error occured');
  } finally {
    print('i dont fucking care i want to run.I always execute');
  }
  print('hruia');
}
