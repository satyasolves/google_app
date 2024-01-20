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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          SizedBox(height: 80), // Provides spacing at the top
         /* Image.asset(
            'assets/google_logo.png', // Make sure to add the Google logo asset
            width: 200,
          ),*/
          Text("Google"),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: searchController,
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
                SizedBox(width: 10), // Add some space between the text field and the button
                ElevatedButton(
                  onPressed: () {
                    // Implement search functionality
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Button color
                    onPrimary: Colors.white, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text('Search'),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            child: ListView(
              // This creates a horizontal scrollable list of bookmarks.
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.folder, color: Colors.white),
                );
              }),
            ),
          ),
          // Remaining space is filled with other UI elements below the bookmarks
          Expanded(
            child: Container(),
          ),
        ],
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
