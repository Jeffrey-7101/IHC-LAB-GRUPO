import 'second_page.dart';

void main() {
  var yearAcumulado = 0;
  var yearN = '2002';
  print(SecondPageArguments().sumaDigYear(yearN));
  for (var i = 0; i < yearN.length; i++) {
    yearAcumulado = int.parse(yearN) + SecondPageArguments().sumaDigYear(yearN);
    yearN = yearAcumulado.toString();
    print(yearAcumulado.toString());
  }
}
