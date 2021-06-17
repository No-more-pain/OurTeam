import 'package:flutter/material.dart';
import 'package:whatsapp/Onboarding/OnBoardingModell.dart';




 // ignore: must_be_immutable
 class SingleOnboardingPage extends StatelessWidget {
  OnBoardingModell onBoardingModell;

  SingleOnboardingPage(this.onBoardingModell);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          fit:  BoxFit.fitHeight,
          image: ExactAssetImage( onBoardingModell.image,


          ),
        ),
        Text(onBoardingModell.title),
        Text(onBoardingModell.description),
      ],
    );
  }
}
