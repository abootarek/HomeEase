// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_Button.dart';

import 'package:home_ease/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:home_ease/features/on_boarding/ui/widgets/build_on_boardingItem.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen extends StatelessWidget {
  final List<OnBoardingModel> boarding = [
    OnBoardingModel(
        body:
            "Find all your house needs in one place.\nWe provide every service to make your\nhome experience smooth.",
        image: "assets/svgs/boarding1.svg",
        title: "Easy Process"),
    OnBoardingModel(
        body:
            "We have the best in class individuals\nworking just for you. They are well\ntrained and capable of handling\nanything you need.",
        image: "assets/svgs/boarding2.svg",
        title: "Expert People"),
    OnBoardingModel(
        body:
            "We have all the household services\nyou need on a daily basis with\neasy access",
        image: "assets/svgs/boarding3.svg",
        title: "All In One Place"),
  ];

  final PageController _pageController = PageController();

  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: TextButton(
              child: Text(
                "Skip",
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
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => BuildOnBoardingItem(
                onBoardingModel: boarding[index],
              ),
              itemCount: boarding.length,
            ),
          ),
SmoothPageIndicator(  
   controller: _pageController,  // PageController  
   count:  boarding.length,  
   effect:  ExpandingDotsEffect(
    dotColor: ColorsApp.gray,
    activeDotColor: ColorsApp.yallow,
    dotHeight: 10.h,
    expansionFactor: 4,
    dotWidth: 10.w,
    spacing: 5.0.w,
   ),  // your preferred effect  
   onDotClicked: (index){  
         
   }  
) , 

          
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 52.h),
            child: CustomButton(
              radius: 18.0,
              text:  "Next",
             
            
              onPressed: () {
                _pageController.nextPage(
                  curve: Curves.fastLinearToSlowEaseIn,
                  duration: const Duration(milliseconds: 750),
                );
                
              },
            ),
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}

