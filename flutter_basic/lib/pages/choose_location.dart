import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/service/WordTime.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime('London', 'London', 'uk.png', "Europe/London"),
    WorldTime('Berlin', 'Berlin', 'greece.png', "Europe/Berlin"),
    WorldTime('Cairo', 'Cairo', 'egypt.png', "Africa/Cairo"),
    WorldTime('Nairobi', 'Nairobi', 'kenya.png', "Africa/Nairobi"),
    WorldTime('Chicago', 'Chicago', 'usa.png', "America/Chicago"),
    WorldTime('Asia/Seoul', 'Seoul', 'south_korea.png', "America/Chicago"),
  ];
  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'time': instance.time,
      'flag': instance.flag,
      'location': instance.location,
      'isDatetime': instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
