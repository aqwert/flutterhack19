import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fluffy/pages/detail_page.dart';

class SearchPage extends StatelessWidget {
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
              Text('TODO Search Page'),
              FlatButton(
                child: Text('Next'),
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailPage(),
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
