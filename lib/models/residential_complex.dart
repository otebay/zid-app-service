class ResidentialComplex {
  final String id;
  final String name;
  final String address;

  ResidentialComplex({
    required this.id,
    required this.name,
    required this.address,
  });

  factory ResidentialComplex.fromMap(String id, Map<String, dynamic> data) {
    return ResidentialComplex(
      id: id,
      name: data['name'] ?? '',
      address: data['address'] ?? '',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'address': address,
    };
  }
}
