void main() {
  final list = [1, 2, 3, 4];

  Map<String, int> marks = {'rivann': 10, 'hruaia': 30, 'dua': 60};
  Map<String, Stu> test = {'cla': Stu('hrrrrrr')};
  if (marks['rivann'] == null) {
    print('not exist');
  } else {
    print(marks['rivann']!.isEven);
  }
//map class testv //iterable ah chuan lazy load avagin nullable amo not null ! kan dah a ngai
  if (test['cla'] == null) {
    print('not exist');
  } else {
    print(test['cla']!.name);
  }

// map print tur chuan itterable a siam a ngai .keys or .values
  for (var element in marks.values) {
    print(element);
  }
  // to list tih hian index kan access
  print('===access to list');
  for (var i = 0; i < marks.length; i++) {
    print(marks.keys.toList()[i]);
  }

  print('=====for each map');

  marks.forEach((key, value) {
    print('$key : ${value.isEven}');
  });

  //addall
  Map<String, int> add = {'age': 33};
  print("===before addAll");
  print(add);
  print("===after addAll");
  add.addAll({'hruaia': 33, 'hrudaia': 33, 'hruadia': 33, 'hrduaia': 33});
  print(add);

//map remove

  Map<int, String> removeMap = {
    10: 'hruaia',
    1: 'hrukkkaia',
    12: 'hruaia',
    11: 'hruaia',
  };
  //to add a value your need to passin a vlue
  //to remove a value you need to pass a key
  print('before remove = ${removeMap}');
  removeMap.remove(10); //a keys a remove anih hmel
  print('After remove remove = ${removeMap}');

  //for each

  Map forEachh = {
    10: 'hello',
    11: 'again',
    12: 'noice',
    13: 'fu',
  };
  forEachh.forEach((key, value) {
    print("$key:$value");
  });
}

class Stu {
  String name;
  Stu(this.name);
}
