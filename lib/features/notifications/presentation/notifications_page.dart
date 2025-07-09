import 'package:flutter/material.dart';
import '../../../core/strings.dart';

class NotificationsPage extends StatelessWidget {
  final String role;
  const NotificationsPage({Key? key, required this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.of(context, 'notifications'))),
      body: Center(child: Text('${AppStrings.of(context, 'notifications')} for $role')),
    );
  }
}
