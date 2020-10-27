import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("Information Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                arguments.name,
                textAlign: TextAlign.center,
              ),
              Text(arguments.lastName, textAlign: TextAlign.center)
            ],
          ),
        ));
  }
}

class SecondPageArguments {
  String name;
  String lastName;
  SecondPageArguments({this.name, this.lastName});
}
