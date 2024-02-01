import 'package:flutter/material.dart';

class SearchResultsPage extends StatelessWidget {
  final String query;

  const SearchResultsPage({Key? key, required this.query}) : super(key: key);

  // This function simulates fetching search results from an API.
  Future<List<String>> _fetchSearchResults(String query) async {
    // In a real app, you would make an HTTP request to a search API here.
    // For this example, we simulate an API response with a delayed future.
    await Future.delayed(Duration(seconds: 2)); // simulate network delay

    // Generating mock results based on the query.
    return List.generate(
      10,
          (index) => 'Result ${index + 1} for query "$query"',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Results for "$query"'),
      ),
      body: FutureBuilder<List<String>>(
        future: _fetchSearchResults(query),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No results found for "$query"'));
          }

          final results = snapshot.data!;

          return ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.search),
                title: Text(results[index]),
                subtitle: Text('https://www.example.com/search?q=${Uri.encodeComponent(query)}'),
              );
            },
          );
        },
      ),
    );
  }
}
