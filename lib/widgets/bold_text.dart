import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  const BoldText(
    this.title, {
    this.size,
    this.color,
    Key key,
  }) : super(key: key);

  final String title;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: size,
          color: color,
          fontWeight: FontWeight.bold,
          fontFamily: 'Object Sans'),
    );
  }
}
