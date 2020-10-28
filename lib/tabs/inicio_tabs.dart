import 'package:flutter/material.dart';

class InicioTa extends StatefulWidget {
  @override
  _InicioTaState createState() => _InicioTaState();
}

class _InicioTaState extends State<InicioTa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
class InicioTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          // agregamos una imagen
          
          // agregamos un boton con alguna accion 
          new Container(
            margin: const EdgeInsets.only(top: 300.0, left: 120.0),
            child:  new RaisedButton(
              padding:  const EdgeInsets.only(top: 20,left: 50,right:50,bottom: 20),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: (){ //click del boton cuando lo presionamos
                Scaffold
                .of(context)
                .showSnackBar(SnackBar(content: Text('Hola'),));
              },
              child: new Text("Presiona Aqui"),
            ),
          ),
        ],
      )
    );
  }
}