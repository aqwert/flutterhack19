import 'package:flutter/material.dart';
import 'package:flutter_fluffy/pages/app.dart';

void main() => runApp(App());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set Object Sans as the default app font
      theme: ThemeData(fontFamily: 'Object Sans'),

    );
  }
}