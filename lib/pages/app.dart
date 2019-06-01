import 'package:flutter/material.dart';
import 'package:flutter_fluffy/pages/splash_screen.dart';
import 'package:flutter_fluffy/pages/landing_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Object Sans',
        primaryColor:
            Color(0xFFBB86FC), //Colors.pinkAccent, // only if Brightness.normal
        //accentColor: Colors.pink,
        //brightness: Brightness.dark,
      ),
      home: SplashPage(),
    );
  }
}

