import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:requisicoes/models/models.dart';

import 'home_page_controller_contract.dart';

class HomePageController implements IHomePageController {
  final _usersController = StreamController<List<User>>();
  Stream<List<User>> get users => _usersController.stream;
  final _namesController = StreamController<List<String>>();
  Stream<List<String>> get names => _namesController.stream;

  void loadHomePageData() async {
    _loadUsers();
    _loadLocalNames();
  }

  void _loadUsers() async {
    final usersMap = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    await Future.delayed(const Duration(seconds: 1));
    final body = jsonDecode(usersMap.body) as List;
    _usersController.sink.add(body.map((currentUserMap) => User.fromMap(currentUserMap as Map)).toList());
  }

  void _loadLocalNames() async {
    await Future.delayed(const Duration(seconds: 1));
    _namesController.sink.add(['Name1', 'Name2', 'Name3', 'Name4', 'Name5']);
  }
}
