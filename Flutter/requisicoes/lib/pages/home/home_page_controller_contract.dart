import 'package:requisicoes/models/models.dart';

abstract class IHomePageController {
  void loadHomePageData();
  Stream<List<User>> get users;
  Stream<List<String>> get names;
}
