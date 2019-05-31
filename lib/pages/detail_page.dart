import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Fluffy'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('TODO Detail Page'),
            ],
          ),
        ),
      ),
    );
  }
}
