// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class CardNotifcationScreen extends StatelessWidget {
  const CardNotifcationScreen({
    Key? key,
    this.image,
    required this.title,
    required this.subtitle1,
    required this.subtitle,
    required this.trailing,
    this.devider,
  }) : super(key: key);
  final Widget? image;
  final String title;
  final String subtitle1;
  final Widget? devider;
  final String subtitle;

  final String trailing;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(
          color: ColorsApp.lightGray,
          width: 2.0,
        ),
      ),
      elevation: 0,
      child: ListTile(
        leading: image,
        title: Text(
          title,
          style: TextStyles.font14Black600,
        ),
        trailing: Text(trailing, style: TextStyles.font14gray500),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.h,
            ),
            Text(subtitle1, style: TextStyles.font14gray500),
            const SizedBox(
              height: 3,
            ),
            Text(subtitle, style: TextStyles.font14gray500),
            SizedBox(
              height: 18.h,
            ),
         //   const Divider(),
            // const Row(
            //   children: [
            //     Text(
            //       'Complete payment methods',
            //     ),
            //     Spacer(),
            //     Icon(
            //       Icons.chevron_right,
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
