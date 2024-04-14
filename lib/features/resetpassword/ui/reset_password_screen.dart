import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPassword_Screen extends StatelessWidget {
  const ResetPassword_Screen({super.key});

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
                "Reset Password",
                style: TextStyles.font28Black700,
              ),
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
                  'Password',
                  style: TextStyles.font16Black600,
                ),
                SizedBox(
                  height: 8.h,
                ),
                AppTextFormField(
                  suffixIcon: const Icon(
                    Icons.visibility_outlined,
                    color: Color(0xffB5B5B5),
                  ),
                  hintText: 'Enter Your Password',
                  validator: (p0) {},
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  'Confirm Password',
                  style: TextStyles.font16Black600,
                ),
                SizedBox(
                  height: 8.h,
                ),
                AppTextFormField(
                  suffixIcon: const Icon(
                    Icons.visibility_outlined,
                    color: Color(0xffB5B5B5),
                  ),
                  hintText: 'Enter Your Confirm Password',
                  validator: (p0) {},
                ),
                SizedBox(
                  height: 48.h,
                ),
                CustomButton(
                  onPressed: () {},
                  text: "Save Password",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
