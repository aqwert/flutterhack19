import 'package:flutter/material.dart';
import 'package:flutter_fluffy/pages/detail_page.dart';

class SearchCard extends StatelessWidget {
  SearchCard({this.title, this.author, this.likes, this.shares});

  final String title;
  final String author;
  final int likes;
  final int shares;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DetailPage(
                      title: title,
                      author: author,
                      likes: likes,
                      shares: shares,
                    ),
              ),
            ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(
              'https://placeimg.com/640/480/any',
              fit: BoxFit.fitWidth,
            ),
            ListTile(
              leading: Icon(
                Icons.widgets,
                size: 36,
              ),
              title: Text(title),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(author),
                    Row(
                      children: <Widget>[
                        Icon(Icons.stars),
                        Text('$likes'),
                        Icon(Icons.share),
                        Text('$shares')
                      ],
                    )
                  ]),
            ),
            ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('DEMO'),
                    onPressed: () {/* ... */},
                  ),
                  FlatButton(
                    child: const Text('SHARE'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
