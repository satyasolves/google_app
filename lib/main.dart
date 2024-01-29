import 'package:flutter/material.dart';
import 'search_results_page.dart';

void main() {
  runApp(MyGoogleCloneApp());
}

class MyGoogleCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Google Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: GoogleHomePage(),
    );
  }
}

class GoogleHomePage extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height * 0.2),
              GoogleLogo(),
              SizedBox(height: 30),
              SearchBar(controller: searchController),
              SizedBox(height: 30),
              SearchButtons(controller: searchController),
            ],
          ),
        ),
      ),
    );
  }
}

class GoogleLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Google',
      style: Theme.of(context).textTheme.headline1!.copyWith(
        fontSize: 72,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  final TextEditingController controller;

  SearchBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Search Google or type a URL',
          hintStyle: TextStyle(color: Colors.grey[500]),
          prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
          suffixIcon: Icon(Icons.mic, color: Colors.grey[500]),
          contentPadding: EdgeInsets.symmetric(vertical: 18),
        ),
      ),
    );
  }
}

class SearchButtons extends StatelessWidget {
  final TextEditingController controller;

  SearchButtons({required this.controller});

  void _search(BuildContext context) {
    if (controller.text.isNotEmpty) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SearchResultsPage(query: controller.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        OutlinedButton(
          onPressed: () => _search(context),
          child: Text('Google Search'),
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            side: BorderSide(color: Colors.transparent),
          ),
        ),
        SizedBox(width: 8),
        OutlinedButton(
          onPressed: () => _search(context),
          child: Text("I'm Feeling Lucky"),
          style: OutlinedButton.styleFrom(
            primary: Colors.white,
            side: BorderSide(color: Colors.transparent),
          ),
        ),
      ],
    );
  }
}
