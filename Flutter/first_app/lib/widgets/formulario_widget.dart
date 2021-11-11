import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  String name = "", sobrenome = "", email = "";
  String? emailError;
  final _formKey = GlobalKey<FormState>();
  InputDecoration get getTextFieldDecoration => const InputDecoration(
        label: Text("Digite o nome..."),
        hintText: "Nome...",
      );

  void showSnackBar(String text, Color color) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: color,
          action: SnackBarAction(label: "OK!", onPressed: () {}),
          content: Text(text),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: getTextFieldDecoration,
                  validator: (value) {
                    if (value != null && value.length >= 3) {
                      return null;
                    }
                    return "Tamanho minimo 3 letras";
                  },
                  onSaved: (val) {},
                  onChanged: (value) {
                    setState(() => name = value);
                  },
                ),
                TextFormField(
                  decoration: getTextFieldDecoration,
                  validator: (value) {
                    if (value != null && value.length >= 9) {
                      return null;
                    }
                    return "Tamanho minimo 9 letras";
                  },
                  onSaved: (val) {},
                  onChanged: (value) {
                    setState(() => sobrenome = value);
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    errorText: emailError,
                  ),
                  onChanged: (val) {
                    setState(() => email = val);
                    if (val.isEmpty || val.length <= 3 || !val.contains("@")) {
                      setState(() => emailError = "Tamanho minimo 3 letras");
                    } else {
                      setState(() => emailError = null);
                    }
                  },
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      showSnackBar("Formulario valido!", Colors.green);
                    } else {
                      showSnackBar("Formulario INVALIDO!!", Colors.red);
                    }
                  },
                  child: const Text("Entrar"),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
