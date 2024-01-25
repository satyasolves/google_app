import 'package:flutter/material.dart';

void main() {
  runApp(MyGoogleApp());
}

class MyGoogleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GoogleHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class GoogleHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Google's background color is white
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GoogleLogo(),
            SizedBox(height: 30), // Space between logo and search field
            SearchBar(),
            SizedBox(height: 20), // Space between search field and buttons
            SearchButtons(),
          ],
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
      style: TextStyle(
        color: Colors.black,
        fontSize: 90, // Adjust size to match Google's logo
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600, // Adjust width to match Google's search bar
      child: TextField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Search Google or type a URL',
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey),
        ),
      ),
    );
  }
}

class SearchButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _searchButton('Google Search'),
        SizedBox(width: 10), // Space between buttons
        _searchButton('I\'m Feeling Lucky'),
      ],
    );
  }

  Widget _searchButton(String text) {
    return OutlinedButton(
      onPressed: () {
        // Implement search functionality
      },
      child: Text(text),
      style: OutlinedButton.styleFrom(
        primary: Colors.grey, // Text color
        side: BorderSide(color: Colors.grey), // Border color
      ),
    );
  }
}
