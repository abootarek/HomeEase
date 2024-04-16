import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
