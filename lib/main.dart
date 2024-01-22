import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Google UI Clone',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            SizedBox(height: 120),
            GoogleTextLogo(),
            SizedBox(height: 30),
            SearchBar(),
            BookmarkBar(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}

class GoogleTextLogo extends StatelessWidget {
  const GoogleTextLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
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
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search Google or type a URL',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              // Implement search functionality
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              onPrimary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text('Search'),
          ),
        ],
      ),
    );
  }
}

class BookmarkBar extends StatelessWidget {
  const BookmarkBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.folder, color: Colors.white),
          );
        },
      ),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          IconButton(icon: Icon(Icons.home, color: Colors.white), onPressed: null),
          IconButton(icon: Icon(Icons.star, color: Colors.white), onPressed: null),
          IconButton(icon: Icon(Icons.share, color: Colors.white), onPressed: null),
          IconButton(icon: Icon(Icons.notifications, color: Colors.white), onPressed: null),
        ],
      ),
    );
  }
}
