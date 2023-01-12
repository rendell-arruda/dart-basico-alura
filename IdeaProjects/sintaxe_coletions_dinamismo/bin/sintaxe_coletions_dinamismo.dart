void main(List<String> arguments) {
  escolherMeioTransporte(Transporte.andando);
  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);
  registrosVisitados = registrarDestinos('Belém', registrosVisitados);
  registrosVisitados = registrarDestinos('Rio de janeiro', registrosVisitados);
  registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);
  registrosVisitados = registrarDestinos('Recife', registrosVisitados);
  print(registrosVisitados);
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
