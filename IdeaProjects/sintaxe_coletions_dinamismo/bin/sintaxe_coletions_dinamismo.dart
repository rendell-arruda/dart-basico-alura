void main(List<String> arguments) {
  escolherMeioTransporteEnum(Transporte.carro);
}

void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print('Vou de Carro para a aventura');
  } else if (locomocao == 1) {
    print('Vou de Bike para a aventura');
  } else {
    print('Vou para a aventura');
  }
}

void escolherMeioTransporteEnum(Transporte locomocao) {
  if (locomocao == Transporte.carro) {
    print('Vou de Carro para a aventura');
  } else if (locomocao == Transporte.bike) {
    print('Vou de Bike para a aventura');
  } else {
    print('Vou para a aventura');
  }
}

enum Transporte { carro, bike, andando, skate, aviao, trem }
