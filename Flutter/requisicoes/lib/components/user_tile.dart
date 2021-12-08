import 'package:flutter/material.dart';
import 'package:requisicoes/models/models.dart';

class UserTile extends StatelessWidget {
  final User currentUser;

  const UserTile({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Name: ${currentUser.name}'),
      leading: Text('${currentUser.id}'),
      trailing: Text('City: ${currentUser.address.city}'),
    );
  }
}
