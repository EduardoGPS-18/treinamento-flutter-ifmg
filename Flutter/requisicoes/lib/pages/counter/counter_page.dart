import 'package:flutter/material.dart';

abstract class ICounterPageController {
  Stream<int> get counterStream;

  int get counter;

  void inc();
  void dec();
}

class CounterPage extends StatelessWidget {
  final ICounterPageController controller;

  const CounterPage({
    Key? key,
    required this.controller,
  }) : super(key: key);

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
              onPressed: controller.inc,
              icon: const Icon(
                Icons.add,
                size: 32,
              ),
            ),
            StreamBuilder<int>(
              stream: controller.counterStream,
              initialData: controller.counter,
              builder: (context, snapshot) {
                final counter = snapshot.hasData ? snapshot.data : 0;
                return Text(
                  '$counter',
                  style: const TextStyle(
                    fontSize: 32,
                  ),
                );
              },
            ),
            IconButton(
              onPressed: controller.dec,
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
