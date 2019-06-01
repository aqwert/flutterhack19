import 'package:flutter/material.dart';
import 'package:flutter_fluffy/widgets/bold_text.dart';
import 'package:flutter_fluffy/widgets/normal_text.dart';

class DetailPage extends StatelessWidget {
  DetailPage({this.title, this.author, this.likes, this.shares, this.imageUrl});

  final String title;
  final String author;
  final int likes;
  final int shares;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NormalText('Fluffy'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Like',
            icon: const Icon(Icons.thumb_up),
            onPressed: () => print('Like'),
          ),
          IconButton(
            tooltip: 'Share',
            icon: const Icon(Icons.share),
            onPressed: () => print('Share'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(imageUrl),
            ListTile(
              leading: Icon(
                Icons.widgets,
                size: 36,
              ),
              title: BoldText(title),
              subtitle: NormalText(author),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 0,
              children: <Widget>[
                Chip(
                  label: NormalText('Potato'),
                ),
                Chip(
                  label: NormalText('Jelly'),
                ),
                Chip(
                  label: NormalText('Mobile'),
                ),
                Chip(
                  label: NormalText('Onboarding'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.star, size: 24),
              title: NormalText('Last updated 24/09/2019'),
            ),
            ListTile(
              leading: Icon(Icons.star, size: 24),
              title: NormalText('Production ready'),
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 24),
              title: NormalText('Built with Flutter 1.5'),
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 24),
              title: NormalText('Built for Mobile, Web, Dektop'),
            ),
            SizedBox(
              height: 30,
            ),
            FloatingActionButton.extended(
              backgroundColor: Colors.pinkAccent,
              icon: Icon(Icons.add),
              label: BoldText('VIEW REPOSITORY'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        title: new BoldText("See Awesome"),
                        content: new NormalText(
                            "Open the awesome code for this widget"),
                        actions: <Widget>[
                          FlatButton(
                            child: const NormalText(
                              'TAKE ME THERE',
                              color: Colors.pinkAccent,
                            ),
                            onPressed: () => Navigator.of(context).pop(),
                          ),
                        ],
                      ),
                );
              },
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
