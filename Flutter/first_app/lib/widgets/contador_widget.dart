import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({
    Key? key,
  }) : super(key: key);

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int cont = 0;
  void add() => setState(() => cont++);
  void sub() => setState(() => cont--);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.exposure_minus_1),
          onPressed: sub,
        ),
        Text(
          "$cont",
          style: const TextStyle(fontSize: 24),
        ),
        IconButton(
          icon: const Icon(Icons.plus_one),
          onPressed: add,
        ),
      ],
    );
  }
}
