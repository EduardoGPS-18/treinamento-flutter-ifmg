import 'package:flutter/material.dart';

import 'navegacao_page.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({Key? key}) : super(key: key);

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  String nome = '';
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Pagina 1"),
      ),
      body: Container(
        color: Colors.green[100],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: switchValue,
              onChanged: (v) {
                setState(() {
                  switchValue = v ?? false;
                });
              },
            ),
            TextField(
              onChanged: (value) {
                setState(() {
                  nome = value;
                });
              },
              decoration: const InputDecoration(
                hintText: 'Digite seu nome!',
                label: Text('NOME'),
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
            TextButton(
              child: Text("GOTO Pagina2 com valor $nome"),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.pagina2,
                  arguments: Pessoa(
                    email: 'teste@teste.com',
                    nome: nome,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Pessoa {
  String nome;
  String email;

  Pessoa({
    required this.email,
    required this.nome,
  });

  factory Pessoa.empty() {
    return Pessoa(
      email: '',
      nome: '',
    );
  }
}
