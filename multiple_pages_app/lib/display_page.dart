import 'package:flutter/material.dart';

class DisplayPage extends StatelessWidget {
  final String name;
  final String id;
  final String email;

  DisplayPage({this.name = '', this.id = '', this.email = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display Page')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name: $name'),
            Text('Student ID: $id'),
            Text('Email: $email'),
          ],
        ),
      ),
    );
  }
}
