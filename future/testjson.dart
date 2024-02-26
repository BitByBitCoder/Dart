// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert" as convert;
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  fetch();
}

void fetch() async {
  const uri = 'http://localhost:3000/stuff';
  final response = await http.get(Uri.parse(uri));
  final result = convert.jsonDecode(response.body);
  final model = Stuff.fromJson(result);
  print("${model.oneType[1].id}");
}

class Data {
  Stuff stuff;
  OtherStuff otherStuff;

  Data({required this.stuff, required this.otherStuff});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      stuff: Stuff.fromJson(json['stuff']),
      otherStuff: OtherStuff.fromJson(json['otherstuff']),
    );
  }
}

class Stuff {
  List<OneType> oneType;
  OtherType otherType;

  Stuff({required this.oneType, required this.otherType});

  factory Stuff.fromJson(Map<String, dynamic> json) {
    return Stuff(
      oneType:
          List<OneType>.from(json['onetype'].map((x) => OneType.fromJson(x))),
      otherType: OtherType.fromJson(json['othertype']),
    );
  }
}

class OneType {
  int id;
  String name;

  OneType({required this.id, required this.name});

  factory OneType.fromJson(Map<String, dynamic> json) {
    return OneType(
      id: json['id'],
      name: json['name'],
    );
  }
}

class OtherType {
  int id;
  String company;

  OtherType({required this.id, required this.company});

  factory OtherType.fromJson(Map<String, dynamic> json) {
    return OtherType(
      id: json['id'],
      company: json['company'],
    );
  }
}

class OtherStuff {
  List<List<int>> thing;

  OtherStuff({required this.thing});

  factory OtherStuff.fromJson(Map<String, dynamic> json) {
    return OtherStuff(
      thing: List<List<int>>.from(json['thing'].map((x) => List<int>.from(x))),
    );
  }
}
