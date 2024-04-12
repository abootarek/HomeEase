import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            AppTextFormField(
              backgroundColor: ColorsApp.darkGreen,
              hintText: "Email",
              validator: (value) {},
            ),
            Text('data' , style: TextStyles.font14yallow500,)
          ],
        ),
      ),
    );
  }
}
