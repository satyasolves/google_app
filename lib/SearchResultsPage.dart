import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;
  final ScrollController _scrollController = ScrollController();

  SearchResultsPage({required this.query});

  List<String> _generateMockResults(String query) {
    // Generate mock results based on the query
    return List.generate(
      10,
          (index) => 'Result ${index + 1} for query: $query',
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> mockResults = _generateMockResults(query);

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results for "$query"'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_upward),
            onPressed: () {
              // Scroll to the top when the user taps on the top arrow icon
              if (_scrollController.hasClients) {
                _scrollController.animateTo(
                  0,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            },
          ),
        ],
      ),
      body: ListView.separated(
        controller: _scrollController,
        itemCount: mockResults.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) => SearchResultItem(
          resultText: mockResults[index],
          query: query,
        ),
      ),
    );
  }
}

class SearchResultItem extends StatelessWidget {
  final String resultText;
  final String query;

  const SearchResultItem({required this.resultText, required this.query});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.search),
      title: Text(resultText),
      subtitle: Text('https://example.com/?q=${Uri.encodeComponent(query)}'),
      onTap: () {
        // Implement navigation to detailed view or external browser
      },
    );
  }
}
