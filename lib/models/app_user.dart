class AppUser {
  final String id;
  final String email;
  final String role;
  final String? zhksId;

  AppUser({required this.id, required this.email, required this.role, this.zhksId});

  factory AppUser.fromMap(String id, Map<String, dynamic> data) => AppUser(
        id: id,
        email: data['email'] ?? '',
        role: data['role'] ?? 'resident',
        zhksId: data['zhksId'],
      );

  Map<String, dynamic> toMap() => {
        'email': email,
        'role': role,
        'zhksId': zhksId,
      };
}
