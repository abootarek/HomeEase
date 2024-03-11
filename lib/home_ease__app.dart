import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeEase extends StatelessWidget {
  const HomeEase({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        // localizationsDelegates: context.localizationDelegates,
        // supportedLocales: context.supportedLocales,
        // locale: context.locale,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'Quicksand',
        ),
        home: child,
      ),
      // child: const HomeEaseApp(),
    );
  }
}
