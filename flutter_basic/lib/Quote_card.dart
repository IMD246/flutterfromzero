import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  late final Quote quote;
  late final VoidCallback delete;
  QuoteCard(Quote quote, VoidCallback delete) {
    this.quote = quote;
    this.delete = delete;
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.getText,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.getAuthor,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            TextButton.icon(
              onPressed: delete,
              label: Text('Press'),
              icon: Icon(Icons.face_retouching_natural),
            )
          ],
        ),
      ),
    );
  }
}
