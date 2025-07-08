class AppNotification {
  final String id;
  final String title;
  final String body;
  final String zhksId;
  final String role; // resident or staff

  AppNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.zhksId,
    required this.role,
  });

  factory AppNotification.fromMap(String id, Map<String, dynamic> data) =>
      AppNotification(
        id: id,
        title: data['title'] ?? '',
        body: data['body'] ?? '',
        zhksId: data['zhksId'] ?? '',
        role: data['role'] ?? 'resident',
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'body': body,
        'zhksId': zhksId,
        'role': role,
      };
}
