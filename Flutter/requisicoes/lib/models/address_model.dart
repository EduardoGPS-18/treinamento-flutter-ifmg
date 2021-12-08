class Address {
  String street;
  String city;

  Address({
    required this.street,
    required this.city,
  });

  factory Address.fromMap(Map map) {
    return Address(street: map['street'], city: map['city']);
  }
}
