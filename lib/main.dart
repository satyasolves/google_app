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
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey[900],
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[800],
        ),
      ),
      themeMode: ThemeMode.dark,
      home: GoogleHomePage(),
    );
  }
}

class GoogleHomePage extends StatelessWidget {
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
              SearchBar(),
              SizedBox(height: 30),
              SearchButtons(),
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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      child: TextField(
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
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _searchButton(context, 'Google Search'),
        SizedBox(width: 8),
        _searchButton(context, "I'm Feeling Lucky"),
      ],
    );
  }

  Widget _searchButton(BuildContext context, String text) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(text),
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        side: BorderSide(color: Colors.transparent),
      ),
    );
  }
}
