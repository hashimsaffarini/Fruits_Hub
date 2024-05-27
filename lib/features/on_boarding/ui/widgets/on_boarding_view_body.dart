import 'package:flutter/material.dart';
import 'package:fruits_hub/features/on_boarding/ui/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: OnBoardingPageView(),
        ),
      ],
    );
  }
}
