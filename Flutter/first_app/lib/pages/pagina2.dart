import 'dart:io';

import 'package:first_app/pages/pages.dart';
import 'package:flutter/material.dart';

import 'navegacao_page.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recivedArgs = ModalRoute.of(context)?.settings.arguments;
    Pessoa pessoa = Pessoa.empty();
    if (recivedArgs is Pessoa) {
      pessoa = recivedArgs;
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Bem vindo ${pessoa.nome}!"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue[100],
          height: 200,
          width: 300,
          child: Image.asset(
            'lib/assets/ponte.jpg',
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
            scale: 0.5,
          ),
        ),
      ),
    );
  }
}
