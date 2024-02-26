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
  final model = Types.fromMap(result);
  print("${model.onetype[0].id}");
}

class Types {
  final List<Onetype> onetype;
  final Othertype othertype;

  Types({required this.onetype, required this.othertype});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'onetype': onetype.map((x) => x.toMap()).toList(),
      'othertype': othertype.toMap(),
    };
  }

  factory Types.fromMap(Map<String, dynamic> map) {
    return Types(
      onetype: List<Onetype>.from(
        (map['onetype'] as List<int>).map<Onetype>(
          (x) => Onetype.fromMap(x as Map<String, dynamic>),
        ),
      ),
      othertype: Othertype.fromMap(map['othertype'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Types.fromJson(String source) =>
      Types.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Onetype {
  final int id;
  final String name;

  Onetype({required this.id, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Onetype.fromMap(Map<String, dynamic> map) {
    return Onetype(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Onetype.fromJson(String source) =>
      Onetype.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Othertype {
  final int id;
  final String company;

  Othertype({required this.id, required this.company});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'company': company,
    };
  }

  factory Othertype.fromMap(Map<String, dynamic> map) {
    return Othertype(
      id: map['id'] as int,
      company: map['company'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Othertype.fromJson(String source) =>
      Othertype.fromMap(json.decode(source) as Map<String, dynamic>);
}
