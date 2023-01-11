void main() {
  String nome = "Uva";
  double peso = 40.2;
  String cor = "Verde";
  String sabor = "Doce";
  int diasDesdeColheita = 40;
  bool? isMadura;

  if (diasDesdeColheita >= 30) {
    isMadura = true;
  } else {
    isMadura = false;
  }
}

bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}

mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print("A $nome está madura.");
  } else {
    print("A $nome não está madura.");
  }

  print("A $nome é $cor.");
}

int funcQuantosDiasMadura(int dias) {
  int diasParaMadura = 30;
  int quantosDiasFaltam = diasParaMadura - dias;
  return quantosDiasFaltam;
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estaMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDesdeColheita dias e precisa de'
        ' $diasParaMadura dias para poder comer!'
        'Ela está Madura? $isMadura');
  }

  void fazerSuco() {
    print('Você fez um otimo suco de $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) alimento $nome pesa $peso gramas e é $cor .');
  }
}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando');
    } else {
      print('Nem precisa cozinhar');
    }
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor,String sabor, int diasDesdeColheita,
      this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe){
    if(existe){
      print('Existe refrigerante de $nome.');
    }else{
      print('Não existe refri de $nome.');
    }
  }
}

class Nozes extends Fruta {

  double porcentagemOleoNatural;

  Nozes(nome, peso, cor, this.diasDesdeColheita, this.isMadura,
      this.porcentagemOleoNatural);
}
