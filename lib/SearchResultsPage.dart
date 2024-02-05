import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;

  SearchResultsPage({required this.query});

  @override
  Widget build(BuildContext context) {
    // This could be replaced with actual data fetched from an API
    final List<String> mockResults = List.generate(
      10,
          (index) => 'Result ${index + 1} for query: $query',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results for "$query"'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_upward),
            onPressed: () {
              // Scroll to the top when the user taps on the top arrow icon
              Scrollable.ensureVisible(context);
            },
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: mockResults.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.search),
            title: Text(mockResults[index]),
            subtitle: Text('https://example.com/?q=${Uri.encodeComponent(query)}'),
            onTap: () {
              // Handle the action when a search result is tapped
              // For example, navigate to a detail page
            },
          );
        },
      ),
    );
  }
}
