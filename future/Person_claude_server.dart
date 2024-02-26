// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import 'future.notation.dart';

void main() {
  fetchPerson();
}

Future fetchPerson() async {
  const String url = "http://localhost:3000/user";
  final response = await http.get(Uri.parse(url));
  final result = convert.jsonDecode(response.body);
  Person persons = Person.fromJson(result);
  print(persons.addresses[0].city);
}

class Person {
  String name;
  int age;
  List<Addresses> addresses;

  Person({required this.name, required this.age, required this.addresses});
  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        name: json['name'],
        age: json['age'],
        addresses: List<Addresses>.from(
            json['addresses'].map((json) => Addresses.frmJson(json))));
    //skills: List<String>.from(json['skills'] ?? []), how to do normal list
  }
}

class Addresses {
  String line1;
  String city;
  String state;
  Addresses({
    required this.line1,
    required this.city,
    required this.state,
  });

  factory Addresses.frmJson(Map<String, dynamic> json) {
    return Addresses(
        line1: json['line1'], city: json['city'], state: json['state']);
  }
}
