import 'package:flutter/material.dart';

class AppRoutes {
  static const String pagina1 = "/pagina1";
  static const String pagina2 = "/pagina2";
}

class NavegacaoApp extends StatelessWidget {
  const NavegacaoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.pagina1,
      routes: <String, WidgetBuilder>{
        AppRoutes.pagina1: (ctx) => const Pagina1(),
        AppRoutes.pagina2: (ctx) => const Pagina2(),
      },
    );
  }
}

class Pagina1 extends StatelessWidget {
  const Pagina1({Key? key}) : super(key: key);

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
        child: TextButton(
          child: const Text("Pagina2"),
          onPressed: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (_) => const Pagina2()),
            // );
            Navigator.of(context).pushNamed(AppRoutes.pagina2);
          },
        ),
      ),
    );
  }
}

class Pagina2 extends StatelessWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text("Pagina 2"),
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.blue[100],
        child: TextButton(
          child: const Text("Pagina1"),
          onPressed: () {
            // Navigator.of(context).pushReplacement(
            //   MaterialPageRoute(builder: (_) => const Pagina1()),
            // );
            Navigator.of(context).pushNamed(AppRoutes.pagina1);
          },
        ),
      ),
    );
  }
}
