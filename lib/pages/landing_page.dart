import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fluffy/pages/search_page.dart';


class LandingPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: new BoxDecoration(color: Colors.black),
        child: Container(
          margin: const EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
          child: Column(
            children: <Widget>[ 
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Find & Share Flutter Widgets',
                    style: new TextStyle(
                      fontSize: 60.0,
                      color: Colors.white,
                      fontFamily: 'ObjectSans',
                      fontWeight: FontWeight.bold
                    )
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
                      child: Text(
                        'Fluffy is a collection of awesome flutter widgets that help you build better things',
                        style: new TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          fontFamily: 'ObjectSans',
                        )
                      ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.pinkAccent,
                    padding: EdgeInsets.all(8.0),
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => SearchPage(),
                      ),
                    ),
                  ),

                ],
              ),
              
            ]
          ),
          
        ),

        
      ),
    );
  }
}
