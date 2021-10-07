main() async {
  print("Código executando");
  var userId = await getUserId();
  print("O id do usuário é ${userId}");
  print("Terminei a função main");
}

Future<String> getUserId() async {
  await Future.delayed(Duration(seconds: 3));
  return "usuario1";
}
