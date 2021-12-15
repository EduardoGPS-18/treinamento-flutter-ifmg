import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  void inc() => setState(() => counter++);
  void dec() => setState(() => counter--);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: inc,
              icon: const Icon(
                Icons.add,
                size: 32,
              ),
            ),
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 32,
              ),
            ),
            IconButton(
              onPressed: dec,
              icon: const Icon(
                Icons.remove,
                size: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
