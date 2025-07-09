import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../features/auth/data/auth_service.dart';
import '../features/auth/presentation/login_page.dart';
import '../features/home/presentation/admin_home.dart';
import '../features/home/presentation/staff_home.dart';
import '../features/home/presentation/resident_home.dart';
import '../models/app_user.dart';

class StartupPage extends StatelessWidget {
  const StartupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        final user = snapshot.data;
        if (user == null) {
          return const LoginPage();
        }
        return FutureBuilder(
          future: AuthService().currentUser(),
          builder: (context, AsyncSnapshot<AppUser?> userSnap) {
            if (!userSnap.hasData) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }
            final appUser = userSnap.data!;
            switch (appUser.role) {
              case 'admin':
                return const AdminHome();
              case 'staff':
                return const StaffHome();
              default:
                return const ResidentHome();
            }
          },
        );
      },
    );
  }
}
