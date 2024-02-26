import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  fetch();
}

void fetch() async {
  const String url = 'http://localhost:9000/person';
  final response = await http.get(Uri.parse(url));
  final result = convert.jsonDecode(response.body);
  Person persons = Person.fromJson(result);
  print('${persons.contact.first.Value}');
}

class Person {
  String name;
  int age;
  Address address;
  List<Contacts> contact;

  Person(
      {required this.name,
      required this.age,
      required this.address,
      required this.contact});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
        name: json['name'],
        age: json['age'],
        address: Address.fromJson(json['address']),
        contact: List<Contacts>.from(
            json['contacts'].map((json) => Contacts.fromJson(json))));
  }
}

class Address {
  String street;
  String city;
  String country;

  Address({required this.street, required this.city, required this.country});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
        street: json['street'], city: json['city'], country: json['country']);
  }
}

class Contacts {
  String type;
  String Value;

  Contacts({required this.type, required this.Value});

  factory Contacts.fromJson(Map<String, dynamic> json) {
    return Contacts(type: json['type'], Value: json['type']);
  }
}
