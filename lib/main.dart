import 'package:flutter/material.dart';

void main() {
  runApp(MyGoogleLikeApp());
}

class MyGoogleLikeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Google-like App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GoogleHomePage(),
    );
  }
}

class GoogleHomePage extends StatefulWidget {
  @override
  _GoogleHomePageState createState() => _GoogleHomePageState();
}

class _GoogleHomePageState extends State<GoogleHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Google-like App'),
    actions: <Widget>[
    IconButton(
    icon: Icon(Icons.search),
    onPressed: () {
    // Implement search functionality
    },
    ),
    IconButton(
    icon: Icon(Icons.more_vert),
    onPressed: () {
    // Implement more options
    },
    ),
    ],
    ),
    drawer: Drawer(
    child: ListView(
    padding: EdgeInsets.zero,
    children
        : <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text(
          'Drawer Header',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.message),
        title: Text('Messages'),
      ),
      ListTile(
        leading: Icon(Icons.account_circle),
        title: Text('Profile'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
      ),
    ],
    ),
    ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item ${index + 1}'),
            subtitle: Text('Subtitle of Item ${index + 1}'),
          );
        },
      ),
    );
  }
}