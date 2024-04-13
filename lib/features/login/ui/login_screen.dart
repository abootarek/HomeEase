import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/card_contact.dart';
import 'package:home_ease/core/widgets/custom_button.dart';

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
              const SizedBox(
                height: 14,
              ),
              Text(
                textAlign: TextAlign.center,
                'Please Enter your Phone and password                             to continue',
                style: TextStyles.font14Black500,
              ),
              const SizedBox(
                height: 18,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Phone',
                    style: TextStyles.font16Black600,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AppTextFormField(
                    suffixIcon: const Icon(
                      Icons.phone_outlined,
                      color: Color(0xffB5B5B5),
                    ),
                    hintText: 'Enter your phone',
                    validator: (p0) {},
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    'Password',
                    style: TextStyles.font16Black600,
                  ),
                  const SizedBox(
                    height: 8,
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
                        onPressed: () {},
                        child: Text(
                          'Forget Password ?',
                          style: TextStyles.font16Black600,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomButton(
                    text: 'Login',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 16,
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
                  const SizedBox(
                    height: 14,
                  ),
                  const Card_contact(
                    text: 'Google',
                    image: 'assets/images/Vector.png',
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don’t Have Account ?'),
                      TextButton(
                        onPressed: () {},
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
