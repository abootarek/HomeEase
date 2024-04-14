import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_ease/home_ease__app.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,

    statusBarIconBrightness:
        Brightness.dark, //<-- For Android SEE HERE (dark icons)
  ));

  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('ar', 'EG'),
        // assetLoader: const CodegenLoader(),
        // saveLocale: true,
        child: const HomeEase()),
  );
}
