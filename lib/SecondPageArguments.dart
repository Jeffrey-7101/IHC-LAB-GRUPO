import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key key, this.name, this.lastName}) : super(key: key);
  final String name;
  final String lastName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information Page"),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}
