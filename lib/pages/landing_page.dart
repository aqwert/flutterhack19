import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fluffy/pages/search_page.dart';
import 'package:flutter_fluffy/util.dart';
import 'package:flutter_fluffy/widgets/bold_text.dart';
import 'package:flutter_fluffy/widgets/normal_text.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BoldText('Find & Share Flutter Widgets',
                    size: 60, color: Colors.white),
                Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
                  child: NormalText(
                      'Fluffy is a collection of awesome flutter widgets that help you build better things',
                      size: 22.0,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton.extended(
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SearchPage(),
                        ),
                      ),
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  label: Text("Getting Started"),
                  backgroundColor: appColor,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
