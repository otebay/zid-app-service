import 'package:flutter/material.dart';
import '../../requests/presentation/requests_page.dart';
import '../../notifications/presentation/notifications_page.dart';
import '../../settings/presentation/settings_page.dart';

class StaffHome extends StatelessWidget {
  const StaffHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staff Panel')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('My Requests'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RequestsPage(role: 'staff')),
            ),
          ),
          ListTile(
            title: const Text('Notifications'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => const NotificationsPage(role: 'staff')),
            ),
          ),
          ListTile(
            title: const Text('Settings'),
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
