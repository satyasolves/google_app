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
      theme: ThemeData.light(), // Default light theme
      darkTheme: ThemeData.dark().copyWith( // Custom dark theme
        // Define dark theme colors here
        primaryColor: Colors.grey[900],
        scaffoldBackgroundColor: Colors.grey[900],
        hintColor: Colors.grey[500],
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[800],
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
          ),
        ),
      ),
      themeMode: ThemeMode.dark, // Use dark theme
      home: GoogleHomePage(),
    );
  }
}

class GoogleHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        color: Colors.white,
        fontSize: 90,
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
        style: TextStyle(fontSize: 16, color: Colors.white),
        decoration: InputDecoration(
          hintText: 'Search Google or type a URL',
          hintStyle: TextStyle(color: Theme.of(context).hintColor),
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
          suffixIcon: Icon(Icons.mic, color: Colors.grey[500]),
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
        ),
        SizedBox(width: 10),
        TextButton(
          onPressed: () {},
          child: Text("I'm Feeling Lucky"),
        ),
      ],
    );
  }
}
