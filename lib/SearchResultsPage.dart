import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;

  const SearchResultsPage({Key? key, required this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mock search results data
    final List<String> mockResults = List.generate(
      10,
          (index) => 'Result ${index + 1} for query "$query"',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results'),
      ),
      body: ListView.builder(
        itemCount: mockResults.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.search),
            title: Text(mockResults[index]),
            subtitle: Text('https://www.example.com/search?q=${Uri.encodeComponent(query)}'),
          );
        },
      ),
    );
  }
}
