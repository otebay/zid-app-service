import 'package:flutter/material.dart';

class RequestsPage extends StatelessWidget {
  final String role; // admin, staff, resident
  const RequestsPage({Key? key, required this.role}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Requests')),
      body: Center(
        child: Text('Requests screen for ' + role),
      ),
    );
  }
}
