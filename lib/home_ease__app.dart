import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/features/select_language/ui/select_language_screan.dart';

class HomeEase extends StatelessWidget {
  const HomeEase({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          fontFamily: 'Quicksand',
        ),
        home: const SelectLanguageScreen(),
      ),
    );
  }
}
