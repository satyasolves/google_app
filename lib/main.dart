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
      backgroundColor: Color(0xFF353535), // This is the body background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, // Removes the drop shadow from the app bar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Google',
              style: TextStyle(
                color: Colors.white,
                fontSize: 90, // Adjust the size to match your design
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20), // Spacing between logo and search field
            Container(
              width: 600, // Adjust the size to match your design
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
            ),
            // Add more widgets for the rest of your page content
          ],
        ),
      ),
    );
  }
}
