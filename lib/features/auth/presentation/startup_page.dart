import 'package:flutter/material.dart';
import '../data/auth_service.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  final AuthService _authService = AuthService();

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final user = await _authService.currentUser();
    if (!mounted) return;
    if (user == null) {
      Navigator.pushReplacementNamed(context, '/login');
    } else {
      switch (user.role) {
        case 'admin':
          Navigator.pushReplacementNamed(context, '/admin');
          break;
        case 'staff':
          Navigator.pushReplacementNamed(context, '/staff');
          break;
        default:
          Navigator.pushReplacementNamed(context, '/resident');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
