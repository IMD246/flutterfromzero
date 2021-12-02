import "package:flutter/cupertino.dart"
    show BuildContext, Container, StatelessWidget, Text, Widget, runApp;
import 'package:flutter/material.dart';
import 'Quote.dart';
import 'Quote_card.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("author1", "text1123123123213"),
    Quote("author2", "text2123123123"),
    Quote("author3", "text3123123"),
  ];
  Quote quote = new Quote("D1", "d2");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent[200],
      ),
      body: Column(
        children: quotes
            .map((e) => QuoteCard(e, () {
                  setState(() {
                    quotes.remove(e);
                  });
                }))
            .toList(),
      ),
    );
  }
}
