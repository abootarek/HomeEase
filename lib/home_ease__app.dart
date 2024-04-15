import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/routing/app_router.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

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
        onGenerateRoute: AppRouter().generateRoute,
        theme: ThemeData(
          appBarTheme: AppBarTheme(titleTextStyle: TextStyles.font18Black700),
          useMaterial3: true,
          primarySwatch: mainGreen,
          fontFamily: 'Quicksand',
        ),
        initialRoute: Routes.profileScreenScreen,
      ),
    );
  }
}
