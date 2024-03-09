import 'package:flutter/material.dart';
import 'package:home_ease/home_ease__app.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('ar', 'EG')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('ar', 'EG'),
        // assetLoader: const CodegenLoader(),
        child: const HomeEase()),
  );
}
