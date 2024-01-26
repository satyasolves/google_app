import 'package:flutter/material.dart';

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
      home: GoogleHomePage(),
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
            SizedBox(height: 30),
            SearchButtons(), // Add buttons below the search bar
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
        fontSize: 90, // Google's logo is quite large
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5, // Responsive width
      child: TextField(
        style: TextStyle(fontSize: 16, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Search Google or type a URL',
          hintStyle: TextStyle(color: Colors.grey[800]),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
          suffixIcon: Icon(Icons.mic, color: Colors.grey[600]),
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
        TextButton(
          onPressed: () {},
          child: Text('Google Search'),
          style: TextButton.styleFrom(primary: Colors.grey[850]),
        ),
        SizedBox(width: 10),
        TextButton(
          onPressed: () {},
          child: Text("I'm Feeling Lucky"),
          style: TextButton.styleFrom(primary: Colors.grey[850]),
        ),
      ],
    );
  }
}
