import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

import 'SecondPageArguments.dart';

class RegistroTabs extends StatefulWidget {
  @override
  _RegistroTabsState createState() => _RegistroTabsState();
}

class _RegistroTabsState extends State<RegistroTabs> {
  String nameValue;

  String lastNameValue;

  var dates;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
                decoration: InputDecoration(
                  labelText: "Nombres:",
                  icon: new Icon(Icons.person),
                ),
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
                  icon: new Icon(Icons.view_sidebar_sharp),
                ),
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
              DateTimePicker(
                locale : const Locale("es","ES"),
                initialValue: '',
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                icon: Icon(Icons.event),
                dateLabelText: 'Fecha de Nacimiento',
                onChanged: (val) => print(val),
                validator: (val) {
                  print(val);
                  if (val.isEmpty) {
                    return "Llene este campo";
                  } else {
                    return null;
                  }
                },
                onSaved: (val) {
                  dates = val;
                },
              ),
              RaisedButton(
                  child: Text("Enviar"),
                  onPressed: () {
                    _showResults(context);
                  },
              ),
          ],
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
