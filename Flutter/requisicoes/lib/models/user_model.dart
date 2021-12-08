import 'models.dart';

class User {
  int id;
  String name;
  String username;
  String email;
  Address address;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address
  });

  factory User.fromMap(Map map) {
    
    final address = Address.fromMap(map['address']);
    return User(
      id: map['id'],
      name: map['name'],
      username: map['username'],
      email: map['email'],
      address: address,
    );
  }
}

