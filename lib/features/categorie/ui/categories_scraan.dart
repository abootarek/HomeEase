import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/build_grid_view.dart';
import 'package:home_ease/translations/locale_keys.g.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text(LocaleKeys.categories.tr(),
          // 'Categories'.tr()
          ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          children: [
            SizedBox(
              height: 10.h,
            ),
            AppTextFormField(
              hintText: LocaleKeys.findCategory.tr(),
              // "Find Category".tr(),
              validator: (p0) {},
              backgroundColor: ColorsApp.white,
              suffixIcon: Icon(
                Icons.search,
                size: 30,
                color: ColorsApp.gray,
              ),
            ),
            const BuildGridView(),
          ],
        ),
      ),
    );
  }
}
