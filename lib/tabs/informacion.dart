import 'dart:core';

import 'package:date_time_picker/date_time_picker.dart';

class Informacion {
  String name;
  String lastname;
  var date;
  var now = DateTime.now();
  Map<int, String> urgInt = {
    1: " emprendedora, original, con voluntad.",
    2: " sociable, con imaginación.",
    3: " creativa, con arte y belleza.",
    4: " firme, sólida.",
    5: " resolutiva, con rigor, propensa al aprendizaje.",
    6: " cariñosa, indecisa.",
    7: " tendiente a luchar.",
    8: " paciente.",
    9: " generosa, con ideas geniales, independiente.",
  };
  Map<int, String> tonInt = {
    1: " emprendedora, original, con voluntad.",
    2: " sociable, con imaginación.",
    3: " creativa, con arte y belleza.",
    4: " firme, sólida.",
    5: " resolutiva, con rigor, propensa al aprendizaje.",
    6: " cariñosa, indecisa.",
    7: " tendiente a luchar.",
    8: " paciente.",
    9: " generosa, con ideas geniales, independiente.",
  };
  Map<int, String> astHer = {
    1: "Hoy es lunes, día real miércoles, regido por el planeta mercurio, la inlfuencia planetaria favorece para actividades relacionadas con: Razón y racionalismo, pleitos judiciales, asuntos civiles, abogacía, ciencia, todo lo que tenga que ver con el intelecto, ciencia médica, curaciones.",
    2: "Hoy es martes, día real viernes, regido por el planeta venus, la inlfuencia planetaria favorece para actividades relacionadas con: Imaginación creadora artística, dramas, comedias y tragedias, arte escénico. Asuntos amorosos, problemas conyugales, cuestiones de novios, lo que tenga que ver con el hogar y con los hijos, etc.",
    3: "Hoy es miércoles, día real domingo, regido por el planeta sol, la inlfuencia planetaria favorece para actividades relacionadas con: Salud, vida, fertilidad, altos dignatarios del gobierno, jefes de empresa, reyes y señores de mando, etc.",
    4: "Hoy es jueves, día real martes, regido por el planeta marte, la inlfuencia planetaria favorece para actividades relacionadas con: Voluntad, mando, ejércitos, guerras, cirugía, fuerzas y fuerzas, casos que impliquen luchas, etc.",
    5: "Hoy es viernes, día real jueves, regido por el planeta júpiter, la inlfuencia planetaria favorece para actividades relacionadas con: Riquezas, pobreza, asuntos económicos favorables o desfavorables, leyes, derechos de gentes, altos dignatarios religiosos, jueces, asuntos que tengan que ver con las leyes, etc.",
    6: "Hoy es sabado, día real sábado, regido por el planeta saturno, la inlfuencia planetaria favorece para actividades relacionadas con: El medio ambiente en que vivimos, vida práctica, Karma en acción, la espada de la justicia que nos alcanza desde el cielo, asuntos de bienes, raíces, tierras, casas, propiedades, cárceles, muertes, etc.",
    7: "Hoy es domingo, día real lunes, regido por el planeta luna, la inlfuencia planetaria favorece para actividades relacionadas con: Imaginación, automatismos subconscientes, reproducción de las especies, viajes, artes manuales, artes prácticas, negocios relacionados con productos líquidos, etc.",
  };

  Informacion({this.name, this.lastname, this.date});

  diaActual() {
    int dia = (now.weekday);

    return dia;
  }

  fechaString() {
    DateTime parsed = DateTime.parse(date);
    DateFormat formatter = DateFormat('d-MMMM-y');
    return formatter.format(parsed);
  }

  year(String date) {
    return int.parse(date.substring(0, 4));
  }

  month(String date) {
    return int.parse(date.substring(5, 7));
  }

  day(String date) {
    return int.parse(date.substring(8, 10));
  }

  num(int a) {
    while (a >= 10) {
      a = a ~/ 1000 + ((a ~/ 100) % 10) + ((a ~/ 10) % 10) + a % 10;
    }
    return a;
  }

  uI() {
    String pre =
        "La urgencia interior, es cómo tendemos a ser, como un signo zodiacal, pero numérico. Este número hace a la";
    return "Urgencia interior: " +
        urgencia().toString() +
        "\n" +
        pre +
        urgInt[urgencia()];
  }

  urgencia() {
    int dia = (day(date) ~/ 10) + (day(date) % 10);
    int mes = (month(date) ~/ 10) + (month(date) % 10);
    int years = year(date) ~/ 1000 +
        ((year(date) ~/ 100) % 10) +
        ((year(date) ~/ 10) % 10) +
        year(date) % 10;
    int numero = num(num(dia) + num(mes) + num(years));
    return numero;
  }

  tF() {
    String pre =
        "La tónica fundamental, es en lo que tenemos que trabajar para triunfar en la vida. Este número indica que la persona tiene que";
    return "Tonica Fundamental: " +
        tonica().toString() +
        "\n" +
        pre +
        tonInt[tonica()];
  }

  tonica() {
    String n = name + lastname;
    int posicion, contador = 0;
    posicion = n.indexOf(" ");
    while (posicion != -1) {
      contador++;
      posicion = n.indexOf(" ", posicion + 1);
    }
    int aux = n.length - contador;
    return num(num(aux) + (urgencia()));
  }

  tonicaDia() {
    int d = day(now.toString());
    int m = month(now.toString());
    int y = year(now.toString());
    int td = num(num(num(d) + num(m) + num(y)) + (tonica()));
    return "Tonica del dia:\nTu número para hoy " +
        y.toString() +
        "-" +
        m.toString() +
        "-" +
        d.toString() +
        " es: " +
        td.toString() +
        ", lo que indica que para tener más probabilidades de éxito en lo que uno se proponga, la persona en este día, habría que: ser :" +
        tonInt[td];
  }

  astrologia() {
    return "Astrología Hermética:\n" + astHer[diaActual()];
  }

  cabala() {
    String cabala =
        "Cábala del Año: \nDurante la vida tenemos años espaciales relacionados con la ley de causa y efecto (Karma), dependerá de uno si el número nos favorezca o esté en contra de uno, por sus acto.\n";
    int a = year(date), contador = 0;
    while (contador < 5) {
      int suma = a ~/ 1000 + ((a ~/ 100) % 10) + ((a ~/ 10) % 10) + a % 10;
      a = a + suma;
      cabala += "Año :" +
          a.toString() +
          " , número regente: " +
          num(a).toString() +
          "\n";
      contador++;
    }
    return cabala;
  }
}
