import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/router.dart';
import 'core/locale_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ZidServiceApp());
}

class ZidServiceApp extends StatelessWidget {
  const ZidServiceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LocaleProvider(
      child: Builder(
        builder: (context) {
          final locale = LocaleProvider.of(context).locale;
          return MaterialApp(
            title: 'ZID Service App',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(fontFamily: 'Roboto'),
            locale: locale,
            supportedLocales: const [
              Locale('en'),
              Locale('ru'),
              Locale('kk'),
            ],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: AppRouter.initial,
          );
        },
      ),
    );
  }
}
