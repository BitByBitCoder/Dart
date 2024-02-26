// ignore_for_file: public_member_api_docs, sort_constructors_first
import "dart:convert" as convert;
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() async {
  WorldTime model = await fetchData() as WorldTime;
  print(model.timezone);
}

Future<WorldTime> fetchData() async {
  const url = 'http://worldtimeapi.org/api/timezone/Asia/Kolkata';

  final response = await http.get(Uri.parse(url));
  Map<String, dynamic> resultT = convert.jsonDecode(response.body);
  final timeModel = WorldTime.fromMap(resultT);
  print(timeModel.timezone);
  return timeModel;
}

class WorldTime {
  final String timezone;

  WorldTime({required this.timezone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timezone': timezone,
    };
  }

  factory WorldTime.fromMap(Map<String, dynamic> map) {
    return WorldTime(
      timezone: map['timezone'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WorldTime.fromJson(String source) =>
      WorldTime.fromMap(json.decode(source) as Map<String, dynamic>);
}
