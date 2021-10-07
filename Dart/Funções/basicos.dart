void main() {
  int somaComArrow(int a, int b) => a + b;
  int somaSemArrow(int a, int b) {
    return a + b;
  }

  print(somaComArrow(6, 7));

  void Function(int, int, void Function(int)) executaFunction;

  executaFunction = (int a, int b, void Function(int) func) {
    int soma = a + b;
    func(soma);
  };

  executaFunction(7, 5, print);

  void Function(Object) funcao;
  funcao = print;

  funcao("Print");

  int executaOperacaoComDoisValores(int a, int b, int Function(int _a, int _b) func) {
    return func(a, b);
  }

  int soma(int _a, int _b) => _a + _b;
  int multiplicacao(int _a, int _b) => _a * _b;
  int acrecentaDois(int _a) => _a + 2;

  print(executaOperacaoComDoisValores(7, 5, soma));
  print(executaOperacaoComDoisValores(8, 6, soma));
  print(executaOperacaoComDoisValores(7, 10, soma));
  print(executaOperacaoComDoisValores(12, 6, soma));

  print(executaOperacaoComDoisValores(12, 2, (a, _) => acrecentaDois(a)));

  print(executaOperacaoComDoisValores(7, 5, multiplicacao));
  print(executaOperacaoComDoisValores(7, 10, multiplicacao));

  adiciona<PARAMS>(PARAMS a, PARAMS b) => print("$a + $b");

  adiciona<int>(5, 7);
  adiciona<String>("5", "7");
  adiciona<Object>(Object(), Object());
}



// Defina um objeto chave-valor onde cada chave seja um identificador único (podem escolher como será esse identificador, ("1", "2", "3")),
// e cada identificador único terá outro objeto chave-valor contendo o nome e um endereço ao usuário. Adicione dois usuários e mostre o nome de um deles,
// e endereço do outro.
  // Map<String, dynamic> usuarios = {
  //   "user0": {
  //     "nome": "Eduardo",
  //     "endereco": "Ouro preto",
  //   },
  //   "user1": {
  //     "nome": "Pedro",
  //     "endereco": "BH",
  //   },
  //   "user2": {
  //     "nome": "Carlos",
  //     "endereco": "Itabirito",
  //   },
  // };

  // print(usuarios[0]["nome"]);
  // print(usuarios[1]["endereco"]);
