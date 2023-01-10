import 'dart:io';

// import 'package:calcula_imc/calcula_imc.dart' as calcula_imc;

void main(List<String> arguments) {
  print('Qual é o seu nome?');
  String? inputNome = stdin.readLineSync();

  print('Qual é a sua idade?');
  String? inputIdade = stdin.readLineSync();

  print('Qual é a sua altura em m?');
  String? inputAltura = stdin.readLineSync();

  print('Qual é o seu peso em kg?');
  String? inputPeso = stdin.readLineSync();

  double imc = int.parse(inputPeso!) / (double.parse(inputAltura!) * double.parse(inputAltura));

  print(inputIdade);
  print(inputNome);
  print(inputAltura);
  print('Seu imc é $imc');




  // print('Hello world: ${calcula_imc.calculate()}!');
}
