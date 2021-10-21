abstract class Animal {
  void comunicar();
  void comer();
}

abstract class AnimalQueVoa extends Animal {
  void voar();
}

class Cachorro implements Animal {
  @override
  void comer() {
    print("Cachorro comendo ração");
  }

  @override
  void comunicar() {
    print("Latindo");
  }
}

class Gato implements Animal {
  @override
  void comer() {
    print("Gato comendo ração");
  }

  @override
  void comunicar() {
    print("Miando");
  }
}

class Passarinho implements AnimalQueVoa {
  @override
  void comer() {
    print("Passarinho comendo semente");
  }

  @override
  void comunicar() {
    print("Piando");
  }

  @override
  void voar() {
    print("Passarinho voando");
  }
}
