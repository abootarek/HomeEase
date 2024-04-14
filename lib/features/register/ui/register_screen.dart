import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/card_contact.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/login/ui/login_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   leading:   const SizedBox.shrink()
      // ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: Text(
                  'Register',
                  style: TextStyles.font28Black700,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18.h),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 321.w,
                    child: Text(
                      textAlign: TextAlign.center,
                      'Please Enter your Phone and password to continue',
                      style: TextStyles.font14Black500,
                    ),
                  ),
                ),
              ),
              Text(
                'Full Name',
                style: TextStyles.font16Black600,
              ),
              SizedBox(
                height: 8.h,
              ),
              AppTextFormField(
                suffixIcon: const Icon(
                  Icons.person_2_outlined,
                  color: Color(0xffB5B5B5),
                ),
                hintText: 'Enter your Name',
                validator: (p0) {},
              ),
              SizedBox(
                height: 18.h,
              ),
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
              SizedBox(
                height: 48.h,
              ),
              CustomButton(
                text: 'Register',
                onPressed: () {
                  context.pushNamed(Routes.otpScreen);

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => OtpScreen()),
                  // );
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Text(
                  'OR',
                  style: TextStyles.font12black500,
                ),
              ),
              const CardSocial(
                text: 'Facebook',
                image: 'assets/images/facebook.png',
              ),
              SizedBox(
                height: 14.h,
              ),
              const CardSocial(
                text: 'Google',
                image: 'assets/images/Vector.png',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Have Account ?',
                      style: TextStyles.font16Black600,
                    ),
                    TextButton(
                      onPressed: () {
                        context.pushNamedAndRemoveUntil(Routes.loginScreen,
                            predicate: (Route<dynamic> route) => false);

                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (BuildContext context) =>
                        //           const LoginScreen()),
                        //   ModalRoute.withName(
                        //       'loginscreens'), // Replace '/home' with the route name you want to navigate until
                        // );
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyles.font16Black700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
