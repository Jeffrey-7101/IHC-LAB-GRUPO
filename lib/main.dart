import 'package:flutter/material.dart';
import 'package:pruebas_en_flutter/second_page.dart';
import 'my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: "Material App",
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) {
          return MyStatefulWidget();
        },
        "/second": (BuildContext context) {
          return InformationPage();
        }
      },
    );
  }
}
