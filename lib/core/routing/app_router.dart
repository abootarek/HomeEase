import 'package:flutter/material.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/features/Profile/ui/Profile_screen.dart';
import 'package:home_ease/features/categorie/ui/categories_scraan.dart';
import 'package:home_ease/features/contact_us/ui/contact_us_screen.dart';
import 'package:home_ease/features/edit_profile/ui/edit_profile_screen.dart';
import 'package:home_ease/features/forgetpassword/ui/forget_password_screen.dart';
import 'package:home_ease/features/home_layout/logic/home_layout_cubit.dart';
import 'package:home_ease/features/home_layout/ui/home_layout_scraan.dart';
import 'package:home_ease/features/login/ui/login_screen.dart';
import 'package:home_ease/features/notification/ui/notification_screen.dart';
import 'package:home_ease/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:home_ease/features/otp/ui/otp_screen.dart';
import 'package:home_ease/features/register/ui/register_screen.dart';
import 'package:home_ease/features/resetpassword/ui/reset_password_screen.dart';
import 'package:home_ease/features/select_language/ui/select_language_screan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
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
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case Routes.otpScreen:
        return MaterialPageRoute(
          builder: (context) => OtpScreen(),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordScreen(),
        );

      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        );
      case Routes.profileScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );
      case Routes.editprofileScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const EditProfileSreen(),
        );
      case Routes.contactusScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const ContactUS(),
        );
      case Routes.notificationScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const NotificationScreen(),
        );
      case Routes.categoriesScreen:
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );
      case Routes.homeLayout:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeLayoutCubit(),
            child: const HomeLayoutScreen(),
          ),
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
