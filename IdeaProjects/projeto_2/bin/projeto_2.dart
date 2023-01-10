void main(List<String> arguments) {
  String nome = 'Laranja';
  double peso = 100.5;
  int diasDesdeColheita = 19;
  int diasParaMadurar = 20;
  bool isMadura = funcEstaMadura(20,20);

  if (isMadura == true) {
    print('A $nome tem $peso g e está madura.');
  } else {
    print('A $nome tem $peso g e não está madura.');
  }
}

funcEstaMadura(diaColheita, diaMadura) {
  return diaColheita >= diaMadura;
}
