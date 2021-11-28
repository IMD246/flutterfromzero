import "package:flutter/cupertino.dart"
    show BuildContext, Container, StatelessWidget, Text, Widget, runApp;
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Text('Xin chào'),
      ),
    );
  }
}
