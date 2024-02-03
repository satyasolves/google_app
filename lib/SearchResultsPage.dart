import 'package:flutter/material.dart';

// SearchResultsPage displays search results like Google. Currently, it uses
// mock data to simulate search results.
class SearchResultsPage extends StatefulWidget {
  final String query;

  const SearchResultsPage({Key? key, required this.query}) : super(key: key);

  @override
  _SearchResultsPageState createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  // In a real app, this would be replaced with actual data from a search API.
  late final List<String> mockResults;

  @override
  void initState() {
    super.initState();
    mockResults = List.generate(
      10,
          (index) => 'Result ${index + 1} for query "${widget.query}"',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Results'),
      ),
      body: SearchResultList(mockResults: mockResults),
    );
  }
}

// Extracting the results list into its own widget for better code organization.
class SearchResultList extends StatelessWidget {
  final List<String> mockResults;

  const SearchResultList({Key? key, required this.mockResults}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mockResults.length,
      itemBuilder: (BuildContext context, int index) {
        return SearchResultItem(result: mockResults[index]);
      },
    );
  }
}

// Extracting individual search result into its own widget for better readability.
class SearchResultItem extends StatelessWidget {
  final String result;

  const SearchResultItem({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.search),
      title: Text(result),
      subtitle: const Text('https://www.example.com'),
      onTap: () {
        // Handle the tap action, possibly opening a web page or another route.
      },
    );
  }
}
