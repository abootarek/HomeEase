import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/resetpassword/ui/reset_password_screen.dart';

class ForgetpassScreen extends StatelessWidget {
  const ForgetpassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(right: 19, left: 19),
        child: Column(
          children: [
            Center(
              child: Text(
                "Forget Password",
                style: TextStyles.font28Black700,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55, right: 60),
              child: Text(
                textAlign: TextAlign.center,
                'Enter your Phone Number to reset password.',
                style: TextStyles.font14Black500,
              ),
            ),
            SizedBox(
              height: 24.h,
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
                  height: 48.h,
                ),
                CustomButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPassword_Screen()),
                    );
                  },
                  text: "Reset Password",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
