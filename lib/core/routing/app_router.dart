

import 'package:flutter/material.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:home_ease/features/select_language/ui/select_language_screan.dart';

class AppRouter {

  Route<dynamic> generateRoute(RouteSettings settings){

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );
      // case Routes.loginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) =>  BlocProvider(
      //       create: (context) =>getIt<LoginCubit>(),
      //       child: const LoginScreen(),
      //     ),
      //   );
        // case Routes.signUpScreen:
        // return MaterialPageRoute(
        //   builder: (_) =>  BlocProvider(
        //     create: (context) =>getIt<SignUpCubit>(),
        //     child: const SignUpScreen(),
        //   ),
        // );
        case Routes.selectLanguageScreen:
        return MaterialPageRoute(
          builder: (context) => const SelectLanguageScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }


}

