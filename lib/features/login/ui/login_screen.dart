import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/card_contact.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/forgetpassword/ui/forget_password_screen.dart';
import 'package:home_ease/features/home/ui/home_screen.dart';
import 'package:home_ease/features/register/ui/register_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 58, right: 19, left: 19),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    style: TextStyles.font16Black600,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  AppTextFormField(
                    suffixIcon: const Icon(
                      Icons.phone_outlined,
                      color: Color(0xffB5B5B5),
                    ),
                    hintText: 'Enter your phone',
                    validator: (p0) {},
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    'Password',
                    style: TextStyles.font16Black600,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  AppTextFormField(
                    suffixIcon: const Icon(
                      Icons.visibility,
                      color: Color(0xffB5B5B5),
                    ),
                    hintText: 'Enter Your Password',
                    validator: (p0) {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgetpassScreen()),
                          );
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
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Center(
                    child: Text(
                      'OR',
                      style: TextStyles.font12black500,
                    ),
                  ),
                  const Card_contact(
                    text: 'Facebook',
                    image: 'assets/images/facebook.png',
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  const Card_contact(
                    text: 'Google',
                    image: 'assets/images/Vector.png',
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don’t Have Account ?'),
                      TextButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const RegisterScreen()),
                            ModalRoute.withName(
                                'loginscreens'), // Replace '/home' with the route name you want to navigate until
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyles.font16Black700,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
