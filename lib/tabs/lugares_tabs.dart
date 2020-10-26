import 'package:flutter/material.dart';

class LugaresTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          // agregamos una imagen
          new Container(
            margin: const EdgeInsets.all(10.0),// margenes por todo los lados
            width: 250.0, //ancho de la imagen 
            height: 250.0, // largo de la imagen
            decoration: new BoxDecoration(
             // image: new DecorationImage(image: new AssetImage("assets/images/prueba1.jpg"),
              //fit: BoxFit.cover
              //), 
            ),
          ),
        ],
      )
    );
  }
}