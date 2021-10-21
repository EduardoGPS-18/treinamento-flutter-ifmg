import 'pessoa.dart';
import 'animal.dart';

void main() {
  // Instanciando um objeto
  Pessoa pessoa1 = Pessoa("Roberto", idade: 20, altura: 170);
  Pessoa pessoa2 = Pessoa.dezoitoAnos("Carlos", altura: 170);
  Pessoa pessoa3 = Pessoa("Mariana", idade: 170, altura: 19);

  Atleta pessoa4 = Atleta(nome: "Bolt", idade: 25, altura: 180);

  pessoa1.correr();
  pessoa4.correr();
  pessoa4.treinar();

  print(pessoa1.nome);
  print(pessoa2.nome);
  print(pessoa3.nome);
  print(pessoa4.nome);

  pessoa1.numeroPessoas();
  // pessoa2.numeroPessoas();
  // pessoa3.numeroPessoas();

  print(Pessoa.contadorDePesssoas);

  //DESATUALIZADO
  // pessoa1.setName("Roberto");
  // print(pessoa1.getName());

  // pessoa1.pular();
  // pessoa2.pular();
  // pessoa3.pular();

  Animal cachorro1 = new Cachorro();
  Animal gato1 = new Gato();
  AnimalQueVoa pardal1 = new Passarinho();

  cachorro1.comunicar();
  cachorro1.comer();
  gato1.comunicar();
  gato1.comer();
  pardal1.comer();
  pardal1.voar();
}
