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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google-like App'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            subtitle: Text('Description of item $index'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action code here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
