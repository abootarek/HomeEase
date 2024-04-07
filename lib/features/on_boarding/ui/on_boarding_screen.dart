// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_Button.dart';

import 'package:easy_localization/easy_localization.dart';


import 'package:home_ease/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:home_ease/features/on_boarding/ui/widgets/build_on_boardingItem.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/translations/locale_keys.g.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<OnBoardingModel> boarding = [
    OnBoardingModel(
        body:
        LocaleKeys.findAllYourHouseNeedsInOnePlace.tr(),
            // "Find all your house needs in one place.\nWe provide every service to make your\nhome experience smooth.".tr(),
        image: "assets/svgs/boarding1.svg",
        title: LocaleKeys.easyProcess.tr(),
        
        // "Easy Process".tr(),
        ),
    OnBoardingModel(
        body:
        LocaleKeys.weHaveTheBestInClassIndividualsWorkingJustForYou.tr(),
            // "We have the best in class individuals\nworking just for you. They are well\ntrained and capable of handling\nanything you need.".tr(),
        image: "assets/svgs/boarding2.svg",
        title: LocaleKeys.expertPeople.tr(),
        // "Expert People".tr(),
        ),
    OnBoardingModel(
        body:
        LocaleKeys.weHaveAllTheHouseholdServicesYouNeedOnADailyBasisWithEasyAccess.tr(),
            // "We have all the household services\nyou need on a daily basis with\neasy access".tr(),
        image: "assets/svgs/boarding3.svg",
        title: LocaleKeys.allInOnePlace.tr(),
        // "All In One Place".tr(),
        ),
  ];

  final PageController _pageController = PageController();

  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: TextButton(
              child: Text(
                LocaleKeys.skip.tr(),
                // "Skip".tr(),
                style: TextStyles.font18yallow700,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (int index) {
                if (index == boarding.length - 1) {
                  setState(() {
                    isLast = true;
                  });
                } else {
                  setState(() {
                    isLast = false;
                  });
                }
              },
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => BuildOnBoardingItem(
                onBoardingModel: boarding[index],
              ),
              itemCount: boarding.length,
            ),
          ),
          SmoothPageIndicator(
              controller: _pageController, // PageController
              count: boarding.length,
              effect: ExpandingDotsEffect(
                dotColor: ColorsApp.gray,
                activeDotColor: ColorsApp.yallow,
                dotHeight: 10.h,
                expansionFactor: 4,
                dotWidth: 10.w,
                spacing: 5.0.w,
              ), // your preferred effect
              onDotClicked: (index) {}),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 52.h),
            child: CustomButton(
              radius: 16.0,
              text: isLast ?LocaleKeys.Enter.tr():LocaleKeys.next.tr(),
              //  "Enter".tr() : "Next".tr(),
              onPressed: () {
                if (isLast) {
                  // context.pushNamed(Routes.selectLanguageScreen);
                } else {
                  _pageController.nextPage(
                    curve: Curves.fastLinearToSlowEaseIn,
                    duration: const Duration(milliseconds: 750),
                  );
                }
              },
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
