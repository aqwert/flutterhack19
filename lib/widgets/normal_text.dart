import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText(
    this.title, {
    Key key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:
          TextStyle(fontWeight: FontWeight.normal, fontFamily: 'Object Sans'),
    );
  }
}
