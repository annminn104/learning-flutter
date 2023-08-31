import 'package:flutter_application_1/shared/interfaces/language_interface.dart';

class Language implements ILanguage {
  @override
  final int id;
  @override
  final String flag;
  @override
  final String name;
  @override
  final String languageCode;
  @override
  final String countryCode;
  @override
  final String currencySymbol;
  @override
  final String currencyCode;
  @override
  final String currencyName;

  const Language(
      this.id,
      this.flag,
      this.name,
      this.languageCode,
      this.countryCode,
      this.currencySymbol,
      this.currencyCode,
      this.currencyName);

  static List<Language> languageList = [
    const Language(
        1, "🇺🇸", "English", "en", 'US', '\$', 'USD', 'United States Dollar'),
    const Language(3, "🇩🇪", "Deutsch", "de", 'DE', '€', 'EUR', 'Euro'),
    const Language(4, "🇪🇸", "Español", "es", 'ES', '€', 'EUR', 'Euro'),
    const Language(5, "🇫🇷", "Français", "fr", 'FR', '€', 'EUR', 'Euro'),
    const Language(6, "🇮🇳", "हिन्दी", "hi", 'IN', '₹', 'INR', 'Indian Rupee'),
    const Language(7, "🇯🇵", "日本語", "ja", 'JP', '¥', 'JPY', 'Japanese Yen'),
    const Language(
        8, "🇰🇷", "한국어", "ko", 'KR', '₩', 'KRW', 'South Korean Won'),
    const Language(9, "🇵🇹", "Português", "pt", 'PT', '€', 'EUR', 'Euro'),
    const Language(
        10, "🇷🇺", "Русский язык", "ru", 'RU', 'руб', 'RUB', 'Russian Ruble'),
    const Language(
        11, "🇹🇷", "Türkçe", "tr", 'TR', 'TL', 'TRY', 'Turkish Lira'),
    const Language(
        12, "🇻🇳", "Tiếng Việt", "vi", 'VN', '₫', 'VND', 'Vietnamese Dong'),
    const Language(13, "🇨🇳", "中文", "zh", 'CN', '¥', 'CNY', 'Chinese Yuan'),
  ];
}
