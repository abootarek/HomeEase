import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ],
      ),
    );
  }
}
