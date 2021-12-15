import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:requisicoes/models/models.dart';

class HomePageController {
  Future<List<User>> get users async {
    final usersMap = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    await Future.delayed(const Duration(seconds: 2));
    final body = jsonDecode(usersMap.body) as List;

    return body.map((currentUserMap) => User.fromMap(currentUserMap as Map)).toList();
  }
}
