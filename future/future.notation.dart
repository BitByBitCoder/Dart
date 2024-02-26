import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main() async {
  // fu().then((value) => print(value));

  // fetch();
  fetchProduct();
}

// Future<String> fun() async {
//   return 'dfd';
// }

// Future<int> fu() {
//   return Future.delayed(Duration(seconds: 2), () async {
//     return 2;
//   });
// }

//.then dosnt function to be async

Future fetch() async {
  final uri = 'https://jsonplaceholder.typicode.com/todos/1';
  final response = await http.get(Uri.parse(uri));
  Map<String, dynamic> result = convert.jsonDecode(response.body);
  Todos todo = Todos.fromJson(result);
  print(todo.title);
}

class Todos {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Todos(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todos.fromJson(Map<String, dynamic> json) {
    return Todos(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        completed: json['completed']);
  }
}

Future fetchProduct() async {
  final uri = 'https://fakestoreapi.com/products';
  final response = await http.get(Uri.parse(uri));
  final result = convert.jsonDecode(response.body);
  List<dynamic> product = result.map((json) => Product.fromJson(json)).toList();
  print(product[1].id);

  print(result.runtimeType);
}

class Product {
  final int id;
  final String title;

  Product({
    required this.id,
    required this.title,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
    );
  }
}
