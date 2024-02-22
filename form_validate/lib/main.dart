import 'package:flutter/material.dart';
import 'input_page.dart'; // Import your InputPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InputPage(), // Use your InputPage widget as the home
    );
  }
}
