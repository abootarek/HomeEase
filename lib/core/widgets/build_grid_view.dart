
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/translations/locale_keys.g.dart';


class BuildGridView extends StatelessWidget {
  const BuildGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24.h),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 200,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.0
              // Change this value to adjust item aspect ratio
              ),
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(

                    // boxShadow: ,
                    borderRadius: BorderRadius.circular(12.r),
                    color: ColorsApp.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,

                        offset: Offset(
                          0.6,
                          0.6,
                        ), // shadow direction: bottom right
                      )
                    ],
                    border: Border.all(
                      color: ColorsApp.lightGray,
                      width: 0.2,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svgs/item.svg",
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      LocaleKeys.hourlyCleaning.tr(),
                      // "hourly cleaning".tr(),
                      style: TextStyles.font18Black700,
                    ),
                  ],
                ),
              )),
    );
  }
}