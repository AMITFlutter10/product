import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'onboardingModel.dart';

class BuilderOnBoarding extends StatelessWidget {
  OnboardingModel onboarding = OnboardingModel();
   BuilderOnBoarding({super.key,required this.onboarding});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("${onboarding.image}"),
        Text("${onboarding.des}"),

      ],
    );
  }
}
