import 'package:flutter/material.dart';

class InformationPage extends StatelessWidget {
  const InformationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text("Tus resultados"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Tu nombre: "),
              Text(
                arguments.name,
                textAlign: TextAlign.justify,
              ),
              Text(arguments.lastName, textAlign: TextAlign.justify),
              Text("Urgencia Interior: "),
              Text(arguments.numUrgenciaInterior()),
              Text(arguments.urgenciasInt()),
              Text("Tonica Fundamental "),
              Text(arguments.tonicaFun()),
              Text("Tonica del Dia"),
              Text(arguments.tonicaDia())
            ],
          ),
        ));
  }
}

class SecondPageArguments {
  String name, lastName, day, month, year;

  Map<int, String> urgInt = {
    3: "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona creativa, con arte y belleza.",
    4: "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona firme, sólida.",
    5: "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona razonativa, con rigor, propensa al aprendizaje.",
    6: "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona cariñosa, indecisa.",
    7: "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona tendiente a luchar.",
    8: "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona paciente.",
    9: "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la persona generosa, con ideas geniales, independiente.",
  };
  SecondPageArguments(
      {this.name, this.lastName, this.day, this.month, this.year});
  sumaLengts() {
    var lengtName = name.length;
    var lengtlastName = lastName.length;
    var suma = lengtName + lengtlastName;
    if (suma.toString().length == 2) {
      suma = int.parse(suma.toString().substring(0, 1)) +
          int.parse(suma.toString().substring(1));
      return suma.toString();
    } else {
      return suma.toString();
    }
  }

  numUrgenciaInterior() {
    String day1 = day.substring(0, 1);
    String day2 = day.substring(1);
    String month1 = month.substring(0, 1);
    String month2 = month.substring(1);
    String year1 = year.substring(0, 1);
    String year2 = year.substring(1, 2);
    String year3 = year.substring(2, 3);
    String year4 = year.substring(3);
    var day1Int = int.parse(day1);
    var day2Int = int.parse(day2);
    var month1Int = int.parse(month1);
    var month2Int = int.parse(month2);
    var year1Int = int.parse(year1);
    var year2Int = int.parse(year2);
    var year3Int = int.parse(year3);
    var year4Int = int.parse(year4);
    var sumDay = day1Int + day2Int;

    var sumGeneral;

    var sumDayString = sumDay.toString();
    var sumDayAux;
    if (sumDayString.length == 2) {
      var sumDayS1 = sumDayString.substring(0, 1);
      var sumDayS2 = sumDayString.substring(1);
      sumDayAux = int.parse(sumDayS1) + int.parse(sumDayS2);
    } else {
      sumDayAux = sumDay;
    }
    var sumMonth = month1Int + month2Int;
    var sumMonthString = sumMonth.toString();
    var sumMonthAux;
    if (sumMonthString.length == 2) {
      var sumMonthS1 = sumMonthString.substring(0, 1);
      var sumMonthS2 = sumMonthString.substring(1);
      sumMonthAux = int.parse(sumMonthS1) + int.parse(sumMonthS2);
    } else {
      sumMonthAux = sumMonth;
    }
    var sumYear = year1Int + year2Int + year3Int + year4Int;
    var sumYearString = sumYear.toString();
    var sumYearAux;
    if (sumYearString.length == 2) {
      var sumYearS1 = sumYearString.substring(0, 1);
      var sumYearS2 = sumYearString.substring(1);
      sumYearAux = int.parse(sumYearS1) + int.parse(sumYearS2);
    } else {
      sumYearAux = sumYear;
    }

    sumGeneral = sumDayAux + sumMonthAux + sumYearAux;
    if (sumGeneral.toString().length == 2) {
      sumGeneral = (int.parse(sumGeneral.toString().substring(0, 1)) +
          int.parse(sumGeneral.toString().substring(1)));
      return sumGeneral.toString();
    } else {
      return sumGeneral.toString();
    }
  }

  urgenciasInt() {
    return urgInt[int.parse(numUrgenciaInterior())];
  }

  numTonicaFun() {
    var sumaFun = int.parse(sumaLengts()) + int.parse(numUrgenciaInterior());
    if (sumaFun.toString().length == 2) {
      sumaFun = int.parse(sumaFun.toString().substring(0, 1)) +
          int.parse(sumaFun.toString().substring(1));
      return sumaFun;
    } else {
      return sumaFun;
    }
  }

  tonicaFun() {
    return numTonicaFun().toString();
  }

  numTonicaDia() {
    var sumTonicaDia = int.parse(numUrgenciaInterior()) + numTonicaFun();
    if (sumTonicaDia.toString().length == 2) {
      sumTonicaDia = int.parse(sumTonicaDia.toString().substring(0, 1)) +
          int.parse(sumTonicaDia.toString().substring(1));
      return sumTonicaDia;
    } else {
      return sumTonicaDia;
    }
  }

  tonicaDia() {
    return numTonicaDia().toString();
  }
}
