import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:pruebas_en_flutter/tabs/ayuda_tabs.dart';
import 'package:pruebas_en_flutter/tabs/inicio_tabs.dart';
import 'package:pruebas_en_flutter/tabs/registro_tabs.dart';
import 'package:flutter/foundation.dart';
import 'package:pruebas_en_flutter/tabs/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
       localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('en'), const Locale('es')],
       theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
            initialRoute: '/',

      routes: {
        '/': (BuildContext context) => MyStatefulWidget(title: "Estudio Numerologico"),
        '/second': (BuildContext context) => InformationPage(),
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key, this.title}) : super(key: key);
  final String title;
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(widget.title),
              bottom: new TabBar(
                indicatorColor: Colors.white,
                tabs: <Widget>[
                   Tab(icon: new Icon(Icons.home), text: "Inicio"),
                   Tab(icon: new Icon(Icons.contacts), text: "Ingresar"),
                   Tab(icon: new Icon(Icons.help), text: "Ayuda")
                ],
              ),
            ),
            body: new TabBarView(
              children: <Widget>[
                InicioTabs(),
                RegistroTabs(),
                AyudaTabs(),
              ],
            ),
          )),
    );
  }
}
