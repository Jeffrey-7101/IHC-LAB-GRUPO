import 'package:flutter/material.dart';

import 'SecondPageArguments.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Estudio Numerologico'),
          backgroundColor: Colors.black45,
          shadowColor: Colors.blue,
        ),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String nameValue;
  String lastNameValue;
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Nombres:"),
                onSaved: (value) {
                  nameValue = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Apellidos"),
                onSaved: (value) {
                  lastNameValue = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return "Llene este campo";
                  } else {
                    return null;
                  }
                },
              ),
              RaisedButton(
                  child: Text("Enviar"),
                  onPressed: () {
                    _showResults(context);
                  }),
            ],
          ),
        ),
      ),
    );
  }

  void _showResults(BuildContext context) {
    if (formKey.currentState.validate()) formKey.currentState.save();
    Navigator.of(context).pushNamed("/second",
        arguments: InformationPage(
            name: this.nameValue, lastName: this.lastNameValue));
  }
}
