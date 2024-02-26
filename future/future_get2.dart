import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert" as convert;
import 'dart:convert';
import 'dart:ffi';

import 'package:http/http.dart' as http;

void main() {
  fetchData();
}

Future fetchData() async {
  const url = 'https://fakestoreapi.com/products';

  try {
    String response = convert.jsonEncode({
      "isbn": "123-456-222",
      "author": {"lastname": "Doe", "firstname": "Jane"},
      "editor": {"lastname": "Smith", "firstname": "Jane"},
      "title": "The Ultimate Database Study Guide",
      "category": ["Non-Fiction", "Technology"]
    });

    List shops =
        jsonDecode(response).map((json) => Book.fromMap(json)).toList();

    print(shops[1].author.firstname);
  } catch (e) {
    print(e);
  }
}

// class ShopModel {
//   int id;
//   String title;
//   double price;
//   String description;
//   String category;
//   String image;
//   RatingModel rating;

//   ShopModel(
//       {required this.id,
//       required this.title,
//       required this.price,
//       required this.description,
//       required this.category,
//       required this.image,
//       required this.rating});

//   factory ShopModel.fromJson(Map<String, dynamic> json) {
//     return ShopModel(
//       id: json['id'],
//       title: json['title'],
//       price: json['price'].toDouble(),
//       description: json['description'],
//       category: json['category'],
//       image: json['image'],
//       rating: RatingModel.fromJson(json['rating']),
//     );
//   }
// }

// class RatingModel {
//   final double rate;
//   final int count;

//   RatingModel({required this.rate, required this.count});

//   factory RatingModel.fromJson(Map<String, dynamic> json) {
//     return RatingModel(
//       rate: json['rate'],
//       count: json['count'],
//     );
//   }
// }

class Book {
  final String isdn;
  final Author author;
  final Editor editor;
  final String title;
  final List category;

  Book(
      {required this.isdn,
      required this.author,
      required this.editor,
      required this.title,
      required this.category});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isdn': isdn,
      'author': author.toMap(),
      'editor': editor.toMap(),
      'title': title,
      'category': category,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
        isdn: map['isdn'] as String,
        author: Author.fromMap(map['author'] as Map<String, dynamic>),
        editor: Editor.fromMap(map['editor'] as Map<String, dynamic>),
        title: map['title'] as String,
        category: List.from(
          (map['category'] as List),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) =>
      Book.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Author {
  final String lastname;
  final String firstname;

  Author({required this.lastname, required this.firstname});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastname': lastname,
      'firstname': firstname,
    };
  }

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      lastname: map['lastname'] as String,
      firstname: map['firstname'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) =>
      Author.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Editor {
  final String lastname;
  final String firstname;

  Editor({required this.lastname, required this.firstname});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastname': lastname,
      'firstname': firstname,
    };
  }

  factory Editor.fromMap(Map<String, dynamic> map) {
    return Editor(
      lastname: map['lastname'] as String,
      firstname: map['firstname'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Editor.fromJson(String source) =>
      Editor.fromMap(json.decode(source) as Map<String, dynamic>);
}
