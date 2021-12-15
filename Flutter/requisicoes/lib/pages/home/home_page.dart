import 'package:flutter/material.dart';
import 'package:requisicoes/components/components.dart';

import 'package:requisicoes/models/models.dart';
import 'package:requisicoes/pages/pages.dart';

class HomePage extends StatelessWidget {
  final HomePageController homePageController = HomePageController();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Requisicoes"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<User>>(
        future: homePageController.users,
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
