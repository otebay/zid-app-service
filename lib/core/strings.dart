import 'package:flutter/widgets.dart';
import 'locale_provider.dart';

class AppStrings {
  static const Map<String, Map<String, String>> _t = {
    'en': {
      'login': 'Login',
      'email': 'Email',
      'password': 'Password',
      'register': 'Register',
      'staffManagement': 'Staff Management',
      'requests': 'Requests',
      'notifications': 'Notifications',
      'settings': 'Settings',
      'createRequest': 'Create Request',
      'myRequests': 'My Requests',
      'adminPanel': 'Admin Panel',
      'staffPanel': 'Staff Panel',
      'residentPanel': 'Resident Panel',
      'language': 'Language',
      'selectLanguage': 'Select language',
      'userAgreement': 'User agreement',
      'privacyPolicy': 'Privacy policy',
      'authorizationHistory': 'Authorization history',
      'deleteAccount': 'Delete account',
      'appVersion': 'App version 0.1.0',
    },
    'ru': {
      'login': 'Войти',
      'email': 'Email',
      'password': 'Пароль',
      'register': 'Регистрация',
      'staffManagement': 'Управление персоналом',
      'requests': 'Заявки',
      'notifications': 'Уведомления',
      'settings': 'Настройки',
      'createRequest': 'Создать заявку',
      'myRequests': 'Мои заявки',
      'adminPanel': 'Панель админа',
      'staffPanel': 'Панель сотрудника',
      'residentPanel': 'Панель жильца',
      'language': 'Язык',
      'selectLanguage': 'Выберите язык',
      'userAgreement': 'Пользовательское соглашение',
      'privacyPolicy': 'Политика конфиденциальности',
      'authorizationHistory': 'История входов',
      'deleteAccount': 'Удалить аккаунт',
      'appVersion': 'Версия приложения 0.1.0',
    },
    'kk': {
      'login': 'Кіру',
      'email': 'Email',
      'password': 'Құпия сөз',
      'register': 'Тіркелу',
      'staffManagement': 'Қызметкерлерді басқару',
      'requests': 'Өтініштер',
      'notifications': 'Хабарламалар',
      'settings': 'Баптаулар',
      'createRequest': 'Өтініш жасау',
      'myRequests': 'Менің өтініштерім',
      'adminPanel': 'Админ панелі',
      'staffPanel': 'Қызметкер панелі',
      'residentPanel': 'Тұрғын панелі',
      'language': 'Тіл',
      'selectLanguage': 'Тілді таңдаңыз',
      'userAgreement': 'Пайдалану келісімі',
      'privacyPolicy': 'Құпиялылық саясаты',
      'authorizationHistory': 'Кіру тарихы',
      'deleteAccount': 'Аккаунтты жою',
      'appVersion': 'Қосымша нұсқасы 0.1.0',
    },
  };

  static String of(BuildContext context, String key) {
    final code = LocaleProvider.of(context).locale.languageCode;
    return _t[code]?[key] ?? _t['en']![key] ?? key;
  }
}
