import 'package:flutter/material.dart';
import '../../requests/presentation/requests_page.dart';
import '../../notifications/presentation/notifications_page.dart';
import '../../settings/presentation/settings_page.dart';
import '../../staff_management/presentation/staff_list_page.dart';

class AdminHome extends StatelessWidget {
  const AdminHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Panel')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Staff Management'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StaffListPage()),
            ),
          ),
          ListTile(
            title: const Text('Requests'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RequestsPage(role: 'admin')),
            ),
          ),
          ListTile(
            title: const Text('Notifications'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => const NotificationsPage(role: 'admin')),
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
