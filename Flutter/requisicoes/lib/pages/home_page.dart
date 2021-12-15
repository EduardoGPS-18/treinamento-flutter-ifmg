import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:requisicoes/components/components.dart';

import 'package:requisicoes/models/models.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<User>> get users async {
    final usersMap = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    await Future.delayed(const Duration(seconds: 2));
    final body = jsonDecode(usersMap.body) as List;

    return body.map((currentUserMap) => User.fromMap(currentUserMap as Map)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Requisicoes"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<User>>(
          future: users,
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
          }),
    );
  }
}
