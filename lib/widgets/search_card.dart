import 'package:flutter/material.dart';
import 'package:flutter_fluffy/pages/detail_page.dart';
import 'package:flutter_fluffy/widgets/bold_text.dart';
import 'package:flutter_fluffy/widgets/normal_text.dart';

class SearchCard extends StatelessWidget {
  SearchCard({this.title, this.author, this.likes, this.shares, this.imageUrl});

  final String title;
  final String author;
  final int likes;
  final int shares;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(
                          title: title,
                          author: author,
                          likes: likes,
                          shares: shares,
                          imageUrl: imageUrl,
                        ),
                  ),
                ),
            child: Image.asset(imageUrl),
          ),
          ListTile(
            leading: Icon(
              Icons.widgets,
              size: 36,
            ),
            title: new BoldText(title),
            subtitle:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              NormalText(author),
              SizedBox(
                height: 4,
              ),
              Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(right: 8),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.star),
                        NormalText('$likes'),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.share),
                      NormalText('$shares'),
                    ],
                  )
                ],
              )
            ]),
          ),
          ButtonTheme.bar(
            // make buttons use the appropriate styles for cards
            child: ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  child: const NormalText('DEMO'),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child: const NormalText('SHARE'),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
