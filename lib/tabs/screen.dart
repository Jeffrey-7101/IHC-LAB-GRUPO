import 'package:flutter/material.dart';
import 'package:pruebas_en_flutter/tabs/informacion.dart';

class InformationPage extends StatelessWidget {
    const InformationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Informacion inf = ModalRoute.of(context).settings.arguments;

    var namePosition = MediaQuery.of(context).size.height /15;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tus resultados"),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: Colors.black,
                ),
                
                Padding(
                  padding: EdgeInsets.only(top: namePosition),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                    inf.name+" "+inf.lastname+"\nFecha de Nacimiento:\n"+inf.fechaString()
,
                      style: TextStyle(color: Colors.white, fontSize: 32,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Números que nos rigen durante la vida:",
                style: TextStyle(color: Colors.black, fontSize: 27,fontWeight: FontWeight.bold),   
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Urgencia interior: '+inf.urgencia().toString(),
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            inf.uI(),
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                          
                        ),
                        
                        Divider(color: Colors.blueGrey,height: 30,),
                        ListTile(
                          title: Text(
                            "Tonica Fundamental: "+inf.tonica().toString(),
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            inf.tF(),
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                          
                        ),
                        Divider(color: Colors.blueGrey,height: 35,),
                        ListTile(
                          title: Text(
                            "Cábala del Año:",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            inf.cabala(),
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                          
                        ),
                        Divider(color: Colors.blue,height: 35,thickness: 5,),
                      
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Regencia del Dia de hoy:",
                style: TextStyle(color: Colors.black, fontSize: 27,fontWeight: FontWeight.bold),   
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Tonica del dia:',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            inf.tonicaDia(),
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                          
                        ),
                        
                        Divider(color: Colors.blueGrey,height: 30,),
                        ListTile(
                          title: Text(
                            "Astrología Hermética: ",
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            inf.astrologia(),
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.justify,
                          ),
                          
                        ),
                        Divider(color: Colors.blueGrey,height: 35,),
                        
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
