import 'package:flutter/material.dart';
import 'package:flutter_fluffy/pages/landing_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Object Sans',
        primaryColor: Colors.pinkAccent, // only if Brightness.normal
        //accentColor: Colors.pink,
        //brightness: Brightness.dark,
      ),
      home: LandingPage(),
    );
  }
}
