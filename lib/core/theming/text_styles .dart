import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';

class TextStyles {
  static TextStyle font48Black700 = TextStyle(
    fontSize: 48.sp,
    fontWeight: FontWeight.w700,
    color: ColorsApp.black,
    height: 1,
  );

  static TextStyle font34Black700 = TextStyle(
    fontSize: 34.sp,
    fontWeight: FontWeight.w700,
    color: ColorsApp.black,
  );

   static TextStyle font18yallow700 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
    color: ColorsApp.yallow,
  
  );


  static TextStyle font16Black500WithOpacity = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: ColorsApp.black.withOpacity(0.5),
  );

  static TextStyle font16Black600 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsApp.black,
  );

  static TextStyle font12blackOpacity700 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: ColorsApp.blackOpacity,
  );
}
