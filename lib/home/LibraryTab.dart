import 'package:flutter/material.dart';

class LibraryTab extends StatefulWidget {
  @override
  State<LibraryTab> createState() => _LibraryTabState();
}

class _LibraryTabState extends State<LibraryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10, // Just as an example
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Book $index'),
          );
        },
      ),
    );
  }
}
