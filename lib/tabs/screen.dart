import 'package:flutter/material.dart';
import 'package:pruebas_en_flutter/tabs/informacion.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Informacion arguments = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tus resultados"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              arguments.name+" "+arguments.lastname
            ),
            Text(
              "Fecha de Nacimiento: "+arguments.fechaString()
            ),
            Text(
              "Números que nos rigen durante la vida:"
            ),
            Text(
              arguments.uI()
            ),
            Text(
              arguments.tF()
            ),
            Text(
              arguments.cabala()
            ),
            Text(
              "Regencia del Dia de hoy:"
            ),
            Text(
              arguments.tonicaDia()
            ),
            Text(
              arguments.astrologia()
            )
          ],
        ) 
      )
    );
  }
}
