import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pruebas_en_flutter/tabs/ayuda_tabs.dart';
import 'package:pruebas_en_flutter/tabs/inicio_tabs.dart';
import 'package:pruebas_en_flutter/tabs/lugares_tabs.dart';
import 'package:pruebas_en_flutter/tabs/registro_tabs.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
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
  Widget build(BuildContext context) {
    return new MaterialApp(
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('en'), const Locale('es')],
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("Estudio Numerologico"),
            bottom: new TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                new Tab(icon: new Icon(Icons.home), text: "Inicio"),
                new Tab(icon: new Icon(Icons.contacts), text: "Ingresar"),
                new Tab(icon: new Icon(Icons.help), text: "Ayuda")
              ],
            ),
          ),
          body: new TabBarView(
            children: <Widget>[
              new InicioTabs(),
              new RegistroTabs(),
              new AyudaTabs(),
            ],
          ),
        )
      ),
    );
  }
}
