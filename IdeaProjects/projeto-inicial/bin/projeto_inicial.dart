// import 'package:projeto_inicial/projeto_inicial.dart' as projeto_inicial;

import 'dart:math';

import 'package:test/expect.dart';

void main() {
  int idade = 30;
  double altura = 1.63;
  const String nome = 'Rendell Arruda';
  final String apelido;

  apelido = 'Dan';
  bool geek =true;

  List<dynamic> rendell = [idade, altura, true, nome, apelido];

  String frase = 'meu nome é ${rendell[3]} \n'
    ' mas meu apelido é '
    '${rendell[rendell.length-1]}';

  List<String> listnome = ['Ricard','Natalia', 'Alex', 'andré'];
  List<String> fruits = ['banana','pineapple','watermelon'];
  fruits.forEach((fruit) => {print(fruit)});
  List<String> mappedFruits = fruits.map((e) => 'I love $e').toList();

  print(mappedFruits);
}
