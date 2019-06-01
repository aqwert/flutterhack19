import 'package:flutter/material.dart';
import 'package:flutter_fluffy/util.dart';
import 'package:flutter_fluffy/widgets/bold_text.dart';
import 'package:flutter_fluffy/widgets/normal_text.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  DetailPage(
      {this.title,
      this.author,
      this.likes,
      this.shares,
      this.imageUrl,
      this.id});

  final String title;
  final String author;
  final int likes;
  final int shares;
  final String imageUrl;
  final String id;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final repoUrl = 'https://github.com/aqwert/flutterhack19';
  bool haveLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BoldText('Fluffy'),
        actions: <Widget>[
          Builder(
            builder: (context) => IconButton(
                tooltip: 'Like',
                icon: Icon(
                  Icons.thumb_up,
                  color: haveLiked ? Colors.deepPurple : Colors.white,
                ),
                onPressed: () {
                  bool showSnack = !haveLiked;
                  setState(() => haveLiked = !haveLiked);
                  if (showSnack) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: NormalText('Awesome Like'),
                    ));
                  }
                }),
          ),
          IconButton(
            tooltip: 'Share',
            icon: const Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () => print('share'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.id,
              child: Image.asset(widget.imageUrl),
            ),
            ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 36,
              ),
              title: BoldText(widget.title),
              subtitle: NormalText(widget.author),
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
              leading: Icon(Icons.calendar_today, size: 24),
              title: NormalText('Last updated 24/09/2019'),
            ),
            ListTile(
              leading: Icon(Icons.check_circle, size: 24),
              title: NormalText('Production ready'),
            ),
            ListTile(
              leading: Icon(Icons.perm_device_information, size: 24),
              title: NormalText('Built with Flutter 1.5'),
            ),
            ListTile(
              leading: Icon(Icons.devices, size: 24),
              title: NormalText('Built for Mobile, Web, Dektop'),
            ),
            SizedBox(
              height: 30,
            ),
            FloatingActionButton.extended(
              backgroundColor: appColor,
              icon: Icon(Icons.code),
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
                                color: appColor,
                              ),
                              onPressed: () async {
                                _launchURL();
                                Navigator.of(context).pop();
                              }),
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

  _launchURL() async {
    if (await canLaunch(repoUrl)) {
      await launch(repoUrl);
    } else {
      throw 'Could not launch $repoUrl';
    }
  }
}
