import 'package:flutter/material.dart';
import 'package:flutter_fluffy/widgets/normal_text.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Image.network(
            'https://placeimg.com/640/480/nature',
            fit: BoxFit.fitWidth,
          ),
          SizedBox(height: 30),
          FloatingActionButton.extended(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.info_outline),
            label: NormalText('Back to Awsome'),
          ),
        ],
      ),
    );
  }
}
