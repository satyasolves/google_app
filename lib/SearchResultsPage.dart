import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;

  const SearchResultsPage({required this.query});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Results')),
      body: Center(
        child: Text('Search results for: $query', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
