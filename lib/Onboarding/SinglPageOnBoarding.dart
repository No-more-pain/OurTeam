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
        Container(
          height: 400,
          
          child: Image(
            fit:  BoxFit.fitHeight,
            image: ExactAssetImage( onBoardingModell.image,


            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(onBoardingModell.title,
          style: TextStyle(
            color: Color.fromRGBO(26,183, 252, 1,),
            fontSize:30,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left:30,right: 30),
          child: Text(onBoardingModell.description,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromRGBO(224,225, 227, 1,),
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),),
        ),
      ],
    );
  }
}
