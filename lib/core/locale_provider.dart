import 'package:flutter/material.dart';

class LocaleProvider extends StatefulWidget {
  final Widget child;
  const LocaleProvider({Key? key, required this.child}) : super(key: key);

  static _LocaleProviderState of(BuildContext context) {
    return context.findAncestorStateOfType<_LocaleProviderState>()!;
  }

  @override
  _LocaleProviderState createState() => _LocaleProviderState();
}

class _LocaleProviderState extends State<LocaleProvider> {
  Locale _locale = const Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InheritedLocale(
      locale: _locale,
      child: widget.child,
    );
  }
}

class InheritedLocale extends InheritedWidget {
  final Locale locale;
  const InheritedLocale({Key? key, required Widget child, required this.locale})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedLocale oldWidget) {
    return oldWidget.locale != locale;
  }
}
