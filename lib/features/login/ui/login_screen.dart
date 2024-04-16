import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/card_contact.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/core/widgets/login_and_register_card_social.dart';
import 'package:home_ease/features/home/ui/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:home_ease/features/login/ui/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80, right: 19, left: 19),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  'Login',
                  style: TextStyles.font28Black700,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 55, right: 52),
                child: Text(
                  textAlign: TextAlign.center,
                  'Please Enter your Phone and password to continue',
                  style: TextStyles.font14Black500,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              const LoginForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      context.pushNamed(Routes.forgetPasswordScreen);
                    },
                    child: Text(
                      'Forget Password ?',
                      style: TextStyles.font16Black600,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomButton(
                text: 'Login',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
              ),
              SizedBox(
                height: 16.h,
              ),
              const LoginAndRegisterCardSocial(),
              const DontHaveAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
