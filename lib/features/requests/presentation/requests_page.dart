import 'package:flutter/material.dart';
import '../../../core/strings.dart';

class RequestsPage extends StatelessWidget {
  final String role; // admin, staff, resident
  const RequestsPage({Key? key, required this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.of(context, 'requests'))),
      body: Center(
        child: Text('${AppStrings.of(context, 'requests')} screen for $role'),
      ),
    );
  }
}
