import 'package:flutter/material.dart';
import 'search_results_page.dart';

void main() => runApp(MyGoogleCloneApp());

class MyGoogleCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: ThemeData.dark(),
      home: GoogleHomePage(),
    );
  }
}

class GoogleHomePage extends StatefulWidget {
  @override
  _GoogleHomePageState createState() => _GoogleHomePageState();
}

class _GoogleHomePageState extends State<GoogleHomePage> {
  final TextEditingController _searchController = TextEditingController();

  void _handleSearch() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => SearchResultsPage(query: query),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              const GoogleLogo(),
              SizedBox(height: 30),
              SearchBar(controller: _searchController),
              SizedBox(height: 30),
              SearchButtons(onSearch: _handleSearch),
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleLogo extends StatelessWidget {
  const GoogleLogo();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Google',
      style: Theme.of(context).textTheme.headline4!.copyWith(fontWeight: FontWeight.w500),
    );
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController controller;

  const SearchBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Search Google or type a URL',
          prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
          suffixIcon: Icon(Icons.mic, color: Colors.grey[500]),
          contentPadding: EdgeInsets.symmetric(vertical: 18),
        ),
      ),
    );
  }
}

class SearchButtons extends StatelessWidget {
  final VoidCallback onSearch;

  const SearchButtons({required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        OutlinedButton(onPressed: onSearch, child: Text('Google Search')),
        SizedBox(width: 10),
        OutlinedButton(onPressed: onSearch, child: Text("I'm Feeling Lucky")),
      ],
    );
  }
}
