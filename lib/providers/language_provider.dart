import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final languageProvider = StateProvider<Locale>((ref) {
  return const Locale('en');
});
