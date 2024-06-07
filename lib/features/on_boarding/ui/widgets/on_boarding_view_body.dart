import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/constants.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/ui/login_view.dart';
import 'package:fruits_hub/features/on_boarding/ui/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(
            pageController: pageController,
          ),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: currentPage != 1
                ? AppColors.primaryColor.withOpacity(0.5)
                : AppColors.primaryColor,
            activeColor: AppColors.primaryColor,
          ),
        ),
        const SizedBox(height: 29),
        Visibility(
          visible: currentPage == 1,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizantalPadding),
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              text: 'ابدأ الان',
            ),
          ),
        ),
        const SizedBox(height: 43),
      ],
    );
  }
}
