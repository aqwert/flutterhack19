import 'package:flutter/material.dart';
import 'package:flutter_fluffy/widgets/normal_text.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Image.asset('images/app_icon.png'),
            SizedBox(height: 30),
            FloatingActionButton.extended(
              backgroundColor: Color(0xFFBB86FC),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.info_outline),
              label: NormalText('Back to Awesome'),
            ),
          ],
        ),
      ),
    );
  }
}
