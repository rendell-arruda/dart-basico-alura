void main(List<String> arguments) {
  escolherMeioTransporte(Transporte.andando);
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);

  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos['São Paulo'] = 1200;
  registrarPrecos['Rio de Janeiro'] = 1500;
  registrarPrecos['Recife'] = 3500;
  registrarPrecos['Belém'] = "Caro";

  registrarPrecos.remove('São Paulo');

  print(registrarPrecos);
}

Set<String> registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

void escolherMeioTransporte(Transporte locomocao) {
  switch (locomocao) {
    case Transporte.carro:
      print('Vou de Carro para a aventura');
      break;
    case Transporte.bike:
      print('Vou de Bike para a aventura');
      break;
    case Transporte.skate:
      print('Vou de Skate para a aventura');
      break;
    default:
      print('Estou indo para a aventura, isso é o que importa!');
  }
}

enum Transporte { carro, bike, andando, skate, aviao, trem }

class Pessoa {
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String, dynamic> toMap() {
    // Map<String, dynamic> resultado = {};
    // resultado['nome'] = this.nome;
    // resultado['idade'] = this.idade;
    // resultado[estaAutenticada] = this.estaAutenticada;
    // return resultado;
    return {
      'nome':this.nome,
      'idade':this.idade,
      'estaAutenticada': this.estaAutenticada
    };
  }

}
