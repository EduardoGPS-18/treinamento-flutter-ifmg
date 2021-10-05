import 'funcs.dart';

void main() {
  String name = "Carlos";
  int idade = 20;
  double pontuacao = 2.5;
  List<String> jogos = [
    "Mario",
    "Sonic",
  ];
  print(jogos[0]);

  Map<String, dynamic> usuarios = {
    "usuario1": {
      "idade": 18,
      "nome": "marcos",
    },
    "usuario2": {
      "nome": "pedro",
      "idade": 24,
    },
  };
  print(usuarios["usuario1"]["nome"]);

  var nome = "Claudio";
  print("Nome: $nome\nTipo do nome é ${nome.runtimeType}");
  nome = "Pedro";
  print("Nome: $nome\nTipo do nome é ${nome.runtimeType}");

  dynamic nome1 = "Claudio";
  print("Nome: $nome1 \nTipo do nome é ${nome.runtimeType}");
  nome1 = 25;
  print("Nome: $nome1 \nTipo do nome é ${nome.runtimeType}");

  var idade1 = 19;
  print(idade1 > 18 ? "idade maior que 18" : "de menor");

  List<int> nums1 = [1, 2, 3, 4];
  List<int> copyNums1 = [...nums1];
  nums1.add(5);
  nums1.add(6);

  print("Nums 1 ${nums1}");
  print("Copy Nums 1 ${copyNums1}");

  func1();
  func2();
}
