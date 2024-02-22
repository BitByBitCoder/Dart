// hriat sa chu zir lo ang

void main() {
  secondFunct(firstfunc);
}

void firstfunc() {
  print('hello');
}

void secondFunct(firstfunc) {
  print('now we print the first');
  firstfunc();
}
