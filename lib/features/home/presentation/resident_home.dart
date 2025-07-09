import 'package:flutter/material.dart';
import '../../requests/presentation/requests_page.dart';
import '../../notifications/presentation/notifications_page.dart';
import '../../settings/presentation/settings_page.dart';
import '../../../core/strings.dart';
import '../../auth/data/auth_service.dart';

class ResidentHome extends StatelessWidget {
  const ResidentHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = AuthService();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.of(context, 'residentPanel')),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await auth.signOut();
              if (context.mounted) {
                Navigator.pushReplacementNamed(context, '/login');
              }
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(AppStrings.of(context, 'createRequest')),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RequestsPage(role: 'resident')),
            ),
          ),
          ListTile(
            title: Text(AppStrings.of(context, 'notifications')),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => const NotificationsPage(role: 'resident')),
            ),
          ),
          ListTile(
            title: Text(AppStrings.of(context, 'settings')),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SettingsPage()),
            ),
          ),
        ],
      ),
    );
  }
}
