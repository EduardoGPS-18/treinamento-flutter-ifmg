import 'dart:async';

void main() {
  StreamController<bool> numberStreamController = StreamController();

  print("Adicionei subscriber");
  numberStreamController.stream.listen(successCallBack, onError: errorCallback);

  print("Adicionei um valor");
  numberStreamController.sink.add(true);
  print("Adicionando um erro");
  numberStreamController.sink.addError(Exception("ENTRADA DE DADO INVALIDA"));
}

void errorCallback(dynamic error) {
  print("Ocorreu um erro!");
  print("ERROR!");
  print(error);
}

void successCallBack(valor) {
  print("Ocorreu um evento!");
  print("EVENTO: $valor!");
}
