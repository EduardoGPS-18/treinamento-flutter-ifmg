import 'package:flutter/material.dart';
import 'package:requisicoes/components/components.dart';

import 'package:requisicoes/models/models.dart';

import 'home_page_controller_contract.dart';

class HomePage extends StatefulWidget {
  final IHomePageController controller;

  const HomePage({Key? key, required this.controller}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    widget.controller.loadHomePageData();
    widget.controller.names.listen(print);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Requisicoes"),
        centerTitle: true,
      ),
      body: StreamBuilder<List<User>>(
        stream: widget.controller.users,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            final users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (ctx, idx) {
                final currentUser = users[idx];
                return UserTile(currentUser: currentUser);
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
