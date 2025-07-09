import 'package:flutter/material.dart';
import '../features/auth/presentation/login_page.dart';
import '../features/home/presentation/admin_home.dart';
import '../features/home/presentation/staff_home.dart';
import '../features/home/presentation/resident_home.dart';
import '../features/auth/presentation/register_page.dart';

class AppRouter {
  static const String initial = '/login';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/admin':
        return MaterialPageRoute(builder: (_) => const AdminHome());
      case '/staff':
        return MaterialPageRoute(builder: (_) => const StaffHome());
      case '/resident':
        return MaterialPageRoute(builder: (_) => const ResidentHome());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      default:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
  }
}
