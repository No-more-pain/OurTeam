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
        title: 'Messages', image: 'Assets/images/chat.webp', description: 'which allows designers to consider the form of a webpage or publication, '),
    OnBoardingModell(
        title: 'Ideas', image: 'Assets/images/chat-1.webp', description: 'which allows designers to consider the form of a webpage or publication, '),
    OnBoardingModell(
        title: 'Planing', image: 'Assets/images/chat-2.webp', description: 'which allows designers to consider the form of a webpage or publication, '),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      child: Column(
        children: [
          Flexible(
            child: Container(
              
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    currentindex = index;
                  });
                },
                itemCount: screens.length,
                itemBuilder: (BuildContext context, int position) {
                  return Container(
                    

                      child: SingleOnboardingPage(screens[position]));
                },
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(100,100),
            child: Row(
              children: _drawdots(screens.length),
            ),
          ),
          SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }

  List<Widget> _drawdots(int qty) {
    List<Widget> dots = [];

    for (int i = 0; i < qty; i++) {
      dots.add(
        Container(
          margin: EdgeInsets.only(left: 30),
            width: (i == currentindex ? 40 : 10),
            height: (i == currentindex )? 10 : 10,
            decoration: BoxDecoration(
                borderRadius: (i== currentindex ) ? BorderRadius.circular(20):BorderRadius.circular(40),
                color: (i == currentindex) ? Color.fromRGBO(26,183, 252, 1) : Color.fromRGBO(147, 166, 170, 1),
                 

            
           ),
        )
      );
    }
    return dots;
    
  }
}
