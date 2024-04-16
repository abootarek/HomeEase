import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          ' Contact Us',
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'We are pleased to contact you to hear your inquiries and opinions',
                style: TextStyles.font20Black600,
              ),
              const SizedBox(
                height: 29,
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Name',
                style: TextStyles.font16Black600,
              ),
              SizedBox(
                height: 8.h,
              ),
              AppTextFormField(
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
                hintText: 'Enter your phone',
                validator: (p0) {},
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Massage',
                style: TextStyles.font16Black600,
              ),
              SizedBox(
                height: 8.h,
              ),
              AppTextFormField(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 100, horizontal: 21),
                hintText: 'Enter Your massage',
                validator: (p0) {},
              ),
              SizedBox(
                height: 53.h,
              ),
              CustomButton(
                text: 'Send',
                style: TextStyles.font18Black700,
                onPressed: () {
                  //   context.pushNamed(Routes.);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
