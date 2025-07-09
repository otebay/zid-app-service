import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  final String role;
  const NotificationsPage({Key? key, required this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: Center(child: Text('Notifications for ' + role)),
    );
  }
}
