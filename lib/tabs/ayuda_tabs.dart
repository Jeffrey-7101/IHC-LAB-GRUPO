import 'package:flutter/material.dart';

class AyudaTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text("Nosotros..."),
      ),
      body: new Center(
        child: new Text("Estudio Numerologico")
      ),
    );
  }
}