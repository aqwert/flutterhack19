import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  DetailPage({this.title, this.author, this.likes, this.shares});

  final String title;
  final String author;
  final int likes;
  final int shares;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fluffy'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Like',
            icon: const Icon(Icons.star),
            onPressed: () => print('Like'),
          ),
          IconButton(
            tooltip: 'Share',
            icon: const Icon(Icons.share),
            onPressed: () => print('Like'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://placeimg.com/640/640/tech',
              fit: BoxFit.fitWidth,
            ),
            ListTile(
              leading: Icon(
                Icons.widgets,
                size: 36,
              ),
              title: Text(title),
              subtitle: Text(author),
            ),
            Wrap(
              spacing: 8,
              runSpacing: 0,
              children: <Widget>[
                Chip(
                  label: Text('Potato'),
                ),
                Chip(
                  label: Text('Jelly'),
                ),
                Chip(
                  label: Text('Mobile'),
                ),
                Chip(
                  label: Text('Onboarding'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.star, size: 24),
              title: Text('Last updated 24/09/2019'),
            ),
            ListTile(
              leading: Icon(Icons.star, size: 24),
              title: Text('Production ready'),
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 24),
              title: Text('Built with Flutter 1.5'),
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 24),
              title: Text('Built for Mobile, Web, Dektop'),
            ),
            SizedBox(
              height: 30,
            ),
            FloatingActionButton.extended(
              icon: Icon(Icons.add),
              label: Text('VIEW REPOSITORY'),
              onPressed: () {},
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
