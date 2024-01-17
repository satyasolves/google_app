import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google Search UI Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Expanded(
        flex: 2,
        child: Container(), // This can hold any top space content or app bar
    ),
    Expanded(
    flex: 3,
    child: Image.asset(
    'assets/google_logo.png', // Make sure to add Google logo asset
    width: 200,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(15.0),
    child: TextField(
    decoration: InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: 'Search Google or type a URL',
    prefixIcon: Icon(Icons.search),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular
      (30),
      borderSide: BorderSide.none,
    ),
    ),
    ),
    ),
          Expanded(
            flex: 5,
            child: Container(), // This can be used for other UI elements below the search bar
          ),
        ],
        ),
        ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home, color: Colors.white), onPressed: () {}),
            IconButton(icon: Icon(Icons.star, color: Colors.white), onPressed: () {}),
            IconButton(icon: Icon(Icons.share, color: Colors.white), onPressed: () {}),
            IconButton(icon: Icon(Icons.notifications, color: Colors.white), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}