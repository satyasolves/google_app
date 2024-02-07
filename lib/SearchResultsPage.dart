// search_results_page.dart

import 'package:flutter/material.dart';
import 'search_result_item.dart'; // Make sure to create this file

class SearchResultsPage extends StatelessWidget {
  final String query;
  final ScrollController _scrollController = ScrollController();

  SearchResultsPage({required this.query});

  List<String> _generateMockResults(String query, int count) {
    return List.generate(
      count,
          (index) => 'Result ${index + 1} for query: $query',
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<String> mockResults = _generateMockResults(query, 10);
    final String encodedQuery = Uri.encodeComponent(query);

    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results for "$query"'),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_upward),
            onPressed: () => _scrollController.animateTo(
              0,
              duration: Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: mockResults.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SearchResultItem(
                resultText: mockResults[index],
                encodedQuery: encodedQuery,
              ),
              if (index < mockResults.length - 1) Divider(),
            ],
          );
        },
      ),
    );
  }
}
