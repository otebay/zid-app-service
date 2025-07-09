import 'package:flutter/material.dart';
import '../../../core/locale_provider.dart';
import '../../../core/strings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localeState = LocaleProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.of(context, 'settings'))),
      body: ListView(
        children: [
          ListTile(
            title: Text(AppStrings.of(context, 'language')),
            subtitle: Text(localeState.locale.languageCode),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    title: Text(AppStrings.of(context, 'selectLanguage')),
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
          ListTile(title: Text(AppStrings.of(context, 'userAgreement'))),
          ListTile(title: Text(AppStrings.of(context, 'privacyPolicy'))),
          ListTile(title: Text(AppStrings.of(context, 'authorizationHistory'))),
          ListTile(title: Text(AppStrings.of(context, 'deleteAccount'))),
          ListTile(title: Text(AppStrings.of(context, 'appVersion'))),
        ],
      ),
    );
  }
}
