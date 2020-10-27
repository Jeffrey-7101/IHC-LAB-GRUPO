import 'package:flutter/material.dart';
import 'second_page.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String nameValue;
  String lastNameValue;
  String dayValue;
  String monthValue;
  String yearValue;
  final formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Estudio Numerologico",
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Nombres:",
                    icon: Container(
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                      ),
                    )),
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
                decoration: InputDecoration(
                    labelText: "Apellidos",
                    icon: Container(
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                      ),
                    )),
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
              Text("Fecha de Nacimiento"),
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Dia",
                    icon: Container(
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                      ),
                    )),
                onSaved: (value) {
                  dayValue = value;
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
                decoration: InputDecoration(
                    labelText: "Mes",
                    icon: Container(
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                      ),
                    )),
                onSaved: (value) {
                  monthValue = value;
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
                decoration: InputDecoration(
                    labelText: "Año",
                    icon: Container(
                      child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.black,
                      ),
                    )),
                onSaved: (value) {
                  yearValue = value;
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
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      Navigator.of(context).pushNamed("/second",
          arguments: SecondPageArguments(
              name: this.nameValue,
              lastName: this.lastNameValue,
              day: this.dayValue,
              month: this.monthValue,
              year: this.yearValue));
    }
  }
}
