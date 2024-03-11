import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_Button.dart';
import 'package:home_ease/features/select_language/ui/widgets/check_box.dart';
import 'package:home_ease/features/select_language/ui/widgets/radio_list_tile.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/translations/locale_keys.g.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 20.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset("assets/svgs/logo_and_name.svg"),
              SizedBox(
                height: 44.h,
              ),
              Text(
                LocaleKeys.FindYourHomeService.tr(),
                style: TextStyles.font48Black700,
              ),
              SizedBox(
                height: 58.h,
              ),
              Text(
                LocaleKeys.selectLanguage.tr(),
                style: const TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              MyRadioListTile(
                  titleText: LocaleKeys.English.tr(),
                  value: 1,
                  selectedOption: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;

                      context.setLocale(const Locale('en'));

                      log(selectedOption.toString());
                    });
                  }),
              const Divider(
                endIndent: 10,
              ),
              MyRadioListTile(
                  titleText: LocaleKeys.Arabic.tr(),
                  value: 2,
                  selectedOption: selectedOption,
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value!;

                      context.setLocale(const Locale('ar'));

                      log(selectedOption.toString());
                    });
                  }),
              SizedBox(
                height: 18.h,
              ),
              const MyCheckboxListTile(),
              SizedBox(
                height: 26.h,
              ),
              CustomButton(
                text: LocaleKeys.Enter.tr(),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
