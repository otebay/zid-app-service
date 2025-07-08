import 'package:flutter/material.dart';
import '../../../core/locale_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localeState = LocaleProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Language'),
            subtitle: Text(localeState.locale.languageCode),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: const Text('Select language'),
                    children: [
                      SimpleDialogOption(
                        child: const Text('English'),
                        onPressed: () {
                          localeState.setLocale(const Locale('en'));
                          Navigator.pop(context);
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text('Русский'),
                        onPressed: () {
                          localeState.setLocale(const Locale('ru'));
                          Navigator.pop(context);
                        },
                      ),
                      SimpleDialogOption(
                        child: const Text('Қазақша'),
                        onPressed: () {
                          localeState.setLocale(const Locale('kk'));
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const Divider(),
          const ListTile(title: Text('User agreement')),
          const ListTile(title: Text('Privacy policy')),
          const ListTile(title: Text('Authorization history')),
          const ListTile(title: Text('Delete account')),
          const ListTile(title: Text('App version 0.1.0')),
        ],
      ),
    );
  }
}
