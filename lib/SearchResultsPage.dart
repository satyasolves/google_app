import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;

  const SearchResultsPage({Key? key, required this.query}) : super(key: key);

  List<String> _generateMockResults(String query) {
    // This could be replaced with an actual data fetch from a backend or API.
    return List.generate(
      10,
          (index) => 'Result ${index + 1} for query "$query"',
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> results = _generateMockResults(query);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
      ),
      body: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          String result = results[index];
          return ListTile(
            leading: const Icon(Icons.search),
            title: Text(result),
            subtitle: Text('https://www.example.com/search?q=${Uri.encodeComponent(query)}'),
          );
        },
      ),
    );
  }
}
