void main(List<String> arguments) {
  int idade = 11;
  bool maiorDeIdade;
  int energia = 100;

  if (idade >= 18) {
    maiorDeIdade = true;
  } else {
    maiorDeIdade = false;
  }
  print(maiorDeIdade);

  for (int i = 1; i < 5; i++) {
    print('Conclui $i voltas');
  }

  while (energia > 0) {
    print('Mais uma repetição');
    energia = energia - 6;
  }

  do {
    print('Mais uma repetição');
    energia = energia - 6;
  } while (energia > 0);

  List<String> list =['Rendell','Leão','da','Costa', 'Arruda' ];
  Iterable maior = list.where((element) => element.length >4);
  print(maior.toList());
}
