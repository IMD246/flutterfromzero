import 'dart:convert';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time;
  String flag;
  String url;
  late bool isDaytime;

  WorldTime(this.location, this.time, this.flag, this.url);

  Future<void> getTime() async {
    Response response =
        await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map map = jsonDecode(response.body);
    String datetime = map['datetime'].toString();
    String offset = map['utc_offset'].toString().substring(1, 3);

    DateTime dateTime = DateTime.parse(datetime);
    dateTime = dateTime.add(Duration(hours: int.parse(offset)));
    isDaytime = dateTime.hour > 6 && dateTime.hour < 15 ? true : false;
    time = DateFormat.jm().format(dateTime);
  }
}
