// ignore_for_file: public_member_api_docs, sort_constructors_first
//hemi test ah hian world time api leh shop api engmah code generator hmangloin kan program ang

import 'dart:convert' as convert;
import 'dart:convert';

import 'package:http/http.dart' as http;

void main() {
  fetchWorldTime();
}

void fetchWorldTime() async {
  const String worldTimeUrl =
      'https://worldtimeapi.org/api/timezone/asia/singapore';
  final response = await http.get(Uri.parse(worldTimeUrl));
  final decodeData = convert.jsonDecode(response.body);
  WorldTimeModel result = WorldTimeModel.fromJson(decodeData);
  print(result.abbreviation);
}

class WorldTimeModel {
  String abbreviation;
  String client_ip;
  String datetime;
  int day_of_week;
  int day_of_year;
  bool dst;
  Null dst_from;
  int dst_offset;
  Null dst_until;
  int raw_offset;
  String timezone;
  int unixtime;
  String utc_datetime;
  String utc_offset;
  int week_number;
  WorldTimeModel({
    required this.abbreviation,
    required this.client_ip,
    required this.datetime,
    required this.day_of_week,
    required this.day_of_year,
    required this.dst,
    required this.dst_from,
    required this.dst_offset,
    required this.dst_until,
    required this.raw_offset,
    required this.timezone,
    required this.unixtime,
    required this.utc_datetime,
    required this.utc_offset,
    required this.week_number,
  });

  factory WorldTimeModel.fromJson(Map<String, dynamic> json) {
    return WorldTimeModel(
        abbreviation: json['abbreviation'],
        client_ip: json['client_ip'],
        datetime: json['datetime'],
        day_of_week: json['day_of_week'],
        day_of_year: json['day_of_year'],
        dst: json['dst'],
        dst_from: json['dst_from'],
        dst_offset: json['dst_offset'],
        dst_until: json['dst_until'],
        raw_offset: json['raw_offset'],
        timezone: json['timezone'],
        unixtime: json['unixtime'],
        utc_datetime: json['utc_datetime'],
        utc_offset: json['utc_offset'],
        week_number: json['week_number']);
  }
}
