import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:convert';

import 'package:my_portfolio_website/providers/language_provider.dart';

final localizationProvider = FutureProvider<Localization>((ref) async {
  var locale = ref.watch(languageProvider);
  var localization = Localization(locale);
  await localization.load();
  return localization;
});

class Localization {
  final Locale locale;
  late Map<String, String> _localizedStrings;

  Localization(this.locale) {
    _localizedStrings = {};
  }

  Future<void> load() async {
    String jsonString =
        await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}
