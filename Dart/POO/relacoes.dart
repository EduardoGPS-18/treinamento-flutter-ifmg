// RELACAO DE HERANCA
class SerVivo {}

class Pessoa extends SerVivo {}

// RELACAO COMPOSICAO
class Motor {}

class Roda {}

class Veiculo {
  Motor motor;
  int numeroRodas;

  late List<Roda> _roda;

  Veiculo({required this.motor, required this.numeroRodas}) {
    inicializarRodas();
  }

  void inicializarRodas() {
    for (var i = 0; i < numeroRodas; i++) {
      _roda.add(Roda());
    }
  }
}
