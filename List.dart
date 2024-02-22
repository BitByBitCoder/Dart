void main() {
  List notfil = ['1', '2', '3'];

  List filtered = notfil.where((element) => element != '1').toList();
  print('filtered: $filtered');
  List notfilMap = [
    {'id': 1, 'name': 'hruaia'},
    {'id': 2, 'jj': 'hruaia'},
    {'id': 1, 'name': 'hruaia'},
    {'id': 1, 'name': 'hruaiafdfd'}
  ];

  List fiteredmap = notfilMap.where((e) => (e as Map)['id'] == 2).toList();
  print('filtered map: $fiteredmap');
}
