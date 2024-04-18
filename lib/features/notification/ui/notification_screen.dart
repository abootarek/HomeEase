import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/notification/ui/widget/card_notifcation_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notification',
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CardNotifcationScreen(
              subtitle1: 'Your order is Done',
              title: 'Order Confirmed',
              image: Image.asset('assets/images/check_right.png'),
              trailing: '1 hr',
              subtitle: 'Your order has been confirmed',
            ),
            const SizedBox(
              height: 19,
            ),
            CardNotifcationScreen(
              title: 'Reminder',
              image: Image.asset('assets/images/nitifcation_icon.png'),
              trailing: '2 hr',
              subtitle: 'scheduled Tomorrow.',
              subtitle1: 'House Shifting - #2F33J ',
            ),
            const SizedBox(
              height: 19,
            ),
            // CardNotifcationScreen(
            //   title: 'Reminder',
            //   image: Image.asset('asset/images/close_icon.png'),
            //   trailing: '2 hr',
            //   subtitle: 'scheduled Tomorrow.',
            //   subtitle1: 'House Shifting - #2F33J ',
            // ),
          ],
        ),
      ),
    );
  }
}
