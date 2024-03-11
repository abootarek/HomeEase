import 'dart:developer';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/translations/locale_keys.g.dart';

class MyCheckboxListTile extends StatefulWidget {
  const MyCheckboxListTile({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyCheckboxListTileState createState() => _MyCheckboxListTileState();
}

class _MyCheckboxListTileState extends State<MyCheckboxListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          activeColor:ColorsApp.mainGreen,
          title: Text(LocaleKeys.agreeingToTheTermsAndConditions.tr(),
              style: TextStyles.font12blackOpacity700),
          value: isChecked,
          onChanged: (value) {
            setState(
              () {
                isChecked = value!;

                log(isChecked.toString());
              },
            );
          },
        ),
      ],
    );
  }
}
