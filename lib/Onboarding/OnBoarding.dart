import 'package:flutter/material.dart';
import 'package:whatsapp/Onboarding/OnBoardingModell.dart';
import 'package:whatsapp/Onboarding/SinglPageOnBoarding.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentindex = 0;
  List<OnBoardingModell> screens = [
    OnBoardingModell(
        title: '', image: 'Assets/images/chat.png', description: ''),
    OnBoardingModell(
        title: '', image: 'Assets/images/chat-2.png', description: ''),
    OnBoardingModell(
        title: '', image: 'Assets/images/chat-3.png', description: ''),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: Container(

            child: PageView.builder(
              onPageChanged: (index){
                setState(() {
                  currentindex = index;
                });
              },

              itemCount: screens.length,
              itemBuilder: (BuildContext context, int position) {
                return Container(
                  height: 400,
                    child: SingleOnboardingPage(screens[position]));
              },
            ),
          ),
        ),


        Row(
          children: _drawdots(screens.length),



        ),
        SizedBox(height: 200,),
      ],
    );
  }

  List<Widget> _drawdots(int qty){
    List<Widget> dots = [];

    for (int i = 0 ; i < qty ; i++){
      dots.add(
        Container(margin: EdgeInsets.only(left: 30),
          height: 20,width: 20,
            color: (i == currentindex ) ? Colors.orange : Colors.white),
      );
    }
    return dots;


  }

}
