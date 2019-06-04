import 'package:flutter/material.dart';
import 'package:flutter_fluffy/pages/landing_page.dart';
import 'package:flutter_fluffy/util.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Object Sans',
        primaryColor: appColor, //only if Brightness.normal
        //brightness: Brightness.dark,
      ),
      home: LandingPage(),
    );
  }
}
