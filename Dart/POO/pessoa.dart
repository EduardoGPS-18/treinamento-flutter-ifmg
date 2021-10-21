class Atleta extends Pessoa {
  Atleta({
    String nome = "Sem nome",
    int? idade,
    int? altura,
  }) : super(
          nome,
          idade: idade,
          altura: altura,
        );

  void treinar() {
    print("treinando");
  }

  @override
  void correr() {
    print("correndo 100m");
  }
}

class Pessoa {
  //Atributos
  int? idade, altura;
  String _nome = "Nome padrao";
  bool editable = false;

  static int contadorDePesssoas = 0;

  //Contrutores
  Pessoa(
    this._nome, {
    this.idade,
    this.altura,
  }) {
    contadorDePesssoas++;
  }

  Pessoa.dezoitoAnos(
    this._nome, {
    this.idade = 18,
    this.altura,
  }) {
    contadorDePesssoas++;
  }

  // Pessoa.comParams(PessoaConstructParams pessoaConstructParams) {
  //   this.nome = pessoaConstructParams.nome;
  // }

  //Metodos
  void correr() {
    print("correndo");
  }

  void comer() {
    print("comendo");
  }

  void pular() {
    print("pulando");
  }

  void numeroPessoas() {
    print("o número total de pessoas é $contadorDePesssoas");
  }

  void set nome(String nome) {
    if (editable) {
      this._nome = nome;
    } else {
      print("Impossivel setar esse nome");
    }
  }

  String get nome {
    return this._nome;
  }
}

// class PessoaConstructParams {
//   String nome;
//   int idade;
//   int altura;
//   PessoaConstructParams({
//     required this.nome,
//     required this.idade,
//     required this.altura,
//   });
// }