import 'package:flutter/material.dart';
import 'app_localization.dart';

Locale locale(String languageCode) {
  switch (languageCode) {
    case 'de':
      return const Locale('de', "DE");
    case 'en':
      return const Locale('en', 'US');
    case 'es':
      return const Locale('es', 'ES');
    case 'fr':
      return const Locale('fr', "FR");
    case 'hi':
      return const Locale('hi', "IN");
    case 'ja':
      return const Locale('ja', "JP");
    case 'ko':
      return const Locale('ko', 'KR');
    case 'pt':
      return const Locale('pt', "PT");
    case 'ru':
      return const Locale('ru', "RU");
    case 'tr':
      return const Locale('tr', "TR");
    case 'vi':
      return const Locale('vi', "VN");
    case 'zh':
      return const Locale('zh', "CN");
    default:
      return const Locale('en', 'US');
  }
}

String? getTranslated(BuildContext context, String key) {
  return AppLocalization.of(context)?.translate(key);
}

Map<String, String>? localizedMap(BuildContext context) =>
    AppLocalization.of(context)?.localizedMap();
