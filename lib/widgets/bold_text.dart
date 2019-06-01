import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText(
    this.title, {
    Key key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Object Sans'),
    );
  }
}
