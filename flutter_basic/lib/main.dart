import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/choose_location.dart';
import 'package:flutter_basic/pages/home.dart';
import 'package:flutter_basic/pages/loading.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
