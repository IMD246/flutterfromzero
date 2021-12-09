import 'package:flutter/material.dart';
import 'service/WordTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setWorldTime() async {
    WorldTime worldTime = WorldTime('Sài Gòn', 'b', 'c', "Asia/Ho_Chi_Minh");
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'time': worldTime.time,
      'flag': worldTime.flag,
      'location': worldTime.location,
      'isDatetime': worldTime.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRotatingCircle(
          size: 50.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
