import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final String text;
  final Color backGround;

  // bool isUppercase=true,
  final Function() onPressed;

  const CustomButton({
    super.key,
    this.height = 60,
    this.width = double.infinity,
    this.radius = 8.0,
    required this.text,
    this.backGround = ColorsApp.mainGreen,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backGround,
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width,
      height: height,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: ColorsApp.white,
          ),
        ),
      ),
    );
  }
}

