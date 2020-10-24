import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App with Flutter'),
          backgroundColor: Colors.black45,
          shadowColor: Colors.blue,
        ),
        body: Card(
          child: Column(
            children: <Widget>[Text('This is body')],
          ),
        ),
      ),
    );
  }
}
