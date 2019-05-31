import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fluffy/pages/search_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FlatButton(
            child: Text('Next'),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SearchPage(),
                  ),
                ),
          ),
        ),
      ),
    );
  }
}
