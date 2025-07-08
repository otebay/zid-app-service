class ServiceRequest {
  final String id;
  final String title;
  final String description;
  final String zhksId;
  final String creatorId;
  final String type; // resident or internal
  final String status; // new, assigned, inProgress, completed

  ServiceRequest({
    required this.id,
    required this.title,
    required this.description,
    required this.zhksId,
    required this.creatorId,
    required this.type,
    required this.status,
  });

  factory ServiceRequest.fromMap(String id, Map<String, dynamic> data) {
    return ServiceRequest(
      id: id,
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      zhksId: data['zhksId'] ?? '',
      creatorId: data['creatorId'] ?? '',
      type: data['type'] ?? 'resident',
      status: data['status'] ?? 'new',
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'zhksId': zhksId,
      'creatorId': creatorId,
      'type': type,
      'status': status,
    };
  }
}
