import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_fluffy/pages/drawer_page.dart';
import 'package:flutter_fluffy/widgets/bold_text.dart';
import 'package:flutter_fluffy/widgets/search_card.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _SearchItemsDelegate _delegate = _SearchItemsDelegate();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String _lastValueSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const BoldText('Fluffy'),
          actions: <Widget>[
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () async {
                final selected = await showSearch<String>(
                  context: context,
                  delegate: _delegate,
                );
                if (selected != null && selected != _lastValueSelected) {
                  setState(() {
                    _lastValueSelected = selected;
                  });
                }
              },
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            SearchCard('1',
                title: 'Menu Widget',
                author: 'Lei Huaraka',
                likes: 112,
                shares: 12,
                imageUrl: 'images/1.gif'),
            SearchCard('2',
                title: 'Text Selector Popup',
                author: 'Lindsey32',
                likes: 112,
                shares: 12,
                imageUrl: 'images/2.gif'),
            SearchCard('3',
                title: 'Settings Widget',
                author: 'Hiro Takami',
                likes: 112,
                shares: 12,
                imageUrl: 'images/3.gif'),
            SearchCard('4',
                title: 'Selector Widget',
                author: 'SuperLeetH4xor111213',
                likes: 112,
                shares: 12,
                imageUrl: 'images/4.gif'),
            SearchCard('5',
                title: 'Selector Widget',
                author: 'Jon Kanter',
                likes: 112,
                shares: 12,
                imageUrl: 'images/5.gif'),
            SearchCard('6',
                title: 'Selector Widget',
                author: 'Chris',
                likes: 112,
                shares: 12,
                imageUrl: 'images/6.gif'),
            SearchCard('7',
                title: 'Selector Widget',
                author: 'Andy',
                likes: 112,
                shares: 12,
                imageUrl: 'images/7.gif'),
            SearchCard('8',
                title: 'Menu Widget',
                author: 'Lei Huaraka',
                likes: 112,
                shares: 12,
                imageUrl: 'images/1.gif'),
            SearchCard('9',
                title: 'Text Selector Popup',
                author: 'Lindsey32',
                likes: 112,
                shares: 12,
                imageUrl: 'images/2.gif'),
            SearchCard('10',
                title: 'Settings Widget',
                author: 'Hiro Takami',
                likes: 112,
                shares: 12,
                imageUrl: 'images/3.gif'),
            SearchCard('11',
                title: 'Selector Widget',
                author: 'SuperLeetH4xor111213',
                likes: 112,
                shares: 12,
                imageUrl: 'images/4.gif'),
            SearchCard('12',
                title: 'Selector Widget',
                author: 'Jon Kanter',
                likes: 112,
                shares: 12,
                imageUrl: 'images/5.gif'),
            SearchCard('13',
                title: 'Selector Widget',
                author: 'Chris',
                likes: 112,
                shares: 12,
                imageUrl: 'images/6.gif'),
            SearchCard('14',
                title: 'Selector Widget',
                author: 'Andy',
                likes: 112,
                shares: 12,
                imageUrl: 'images/7.gif'),
          ],
        ),
        drawer: DrawerPage());
  }
}

class _SearchItemsDelegate extends SearchDelegate<String> {
  final List<String> _data = <String>["Animated Button", "Auto Complete"];
  final List<String> _history = <String>["Animated Button", "Auto Complete"];

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<String> suggestions = query.isEmpty
        ? _history
        : _data.where((String i) => '$i'.startsWith(query));

    return _SuggestionList(
      query: query,
      suggestions: suggestions.map<String>((String i) => '$i').toList(),
      onSelected: (String suggestion) {
        query = suggestion;
        showResults(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query == null || !_data.contains(query)) {
      return Center(
        child: Text(
          '"$query"\n is not a valid.\nTry again.',
          textAlign: TextAlign.center,
        ),
      );
    }

    return ListView(
      children: <Widget>[
        SearchCard('1a',
            title: 'Potato Jelly Animation',
            author: 'Lance Johnstone',
            likes: 112,
            shares: 12,
            imageUrl: 'images/5.gif'),
        SearchCard('2a',
            title: 'Cool button Animation',
            author: 'Walter Lim',
            likes: 3,
            shares: 58,
            imageUrl: 'images/6.gif'),
        SearchCard('3a',
            title: 'Mic drop Animation',
            author: 'Kayee Wong',
            likes: 1,
            shares: 9001,
            imageUrl: 'images/7.gif'),
      ],
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      query.isEmpty
          ? IconButton(
              tooltip: 'Voice Search',
              icon: const Icon(Icons.mic),
              onPressed: () {
                query = 'TODO: implement voice input';
              },
            )
          : IconButton(
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
            ),
    ];
  }
}

class _SuggestionList extends StatelessWidget {
  const _SuggestionList({this.suggestions, this.query, this.onSelected});

  final List<String> suggestions;
  final String query;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (BuildContext context, int i) {
        final String suggestion = suggestions[i];
        return ListTile(
          leading: query.isEmpty ? const Icon(Icons.history) : const Icon(null),
          title: RichText(
            text: TextSpan(
              text: suggestion.substring(0, query.length),
              style:
                  theme.textTheme.subhead.copyWith(fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: suggestion.substring(query.length),
                  style: theme.textTheme.subhead,
                ),
              ],
            ),
          ),
          onTap: () {
            onSelected(suggestion);
          },
        );
      },
    );
  }
}
