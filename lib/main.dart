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
    );
  }
}

class GoogleHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF353535), // Body background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GoogleLogo(),
            SizedBox(height: 20), // Space between logo and search field
            SearchBar(),
            // Additional UI elements can be added here
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
        color: Colors.white,
        fontSize: 90, // Adjust size to match your design
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600, // Adjust width to match your design
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
