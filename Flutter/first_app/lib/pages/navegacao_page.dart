import 'package:flutter/material.dart';

import 'pages.dart';

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
