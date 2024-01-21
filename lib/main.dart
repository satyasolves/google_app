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
  final TextEditingController searchController = TextEditingController();
  final double commonPadding = 15.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          Spacer(flex: 2),
          GoogleTextLogo(),
          Spacer(),
          SearchBar(controller: searchController),
          BookmarkBar(iconCount: 10),
          Spacer(flex: 5),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}

class GoogleTextLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Google',
      style: TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: -2.0,
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search Google or type a URL',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              // Implement search functionality
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text('Search'),
          ),
        ],
      ),
    );
  }
}

class BookmarkBar extends StatelessWidget {
  const BookmarkBar({Key? key, required this.iconCount}) : super(key: key);

  final int iconCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: iconCount,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
            child: Icon(Icons.folder, color: Colors.white),
          );
        },
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
    );
  }
}
