import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';

import '../atom/StyledText.dart';
import '../specialists/GoogleSignup.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  Future<void> handleSignup() async {
    var signup = GoogleSignup();
    await signup.signInUser();
  }
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      onFinish: handleSignup,
      headerBackgroundColor: Colors.white,
      finishButtonText: 'Register',
      finishButtonColor: Colors.deepPurple,
      skipTextButton: Text('Skip'),
      background: [
        SvgPicture.asset('images/onboarding/family.svg',
            height: 300, width: 300),
        SvgPicture.asset('images/onboarding/ai.svg', height: 300, width: 300),
        SvgPicture.asset('images/onboarding/calendar.svg',
            height: 300, width: 300),
      ],
      totalPage: 3,
      speed: 1.8,
      pageBodies: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            children: const <Widget>[
              SizedBox(
                height: 300,
              ),
              StyledText(
                text: 'Remember when grandma used to tell you bedtime stories?',
                color: Colors.deepPurple,
                type: TextType.h2,
              ),
              SizedBox(
                height: 20,
              ),
              StyledText(
                text: 'Maybe you never had a lovely grandma, its ok GoodNight AI has got your back',
                color: Colors.black45,
                type: TextType.b2,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: const <Widget>[
              SizedBox(
                height: 350,
              ),
              StyledText(
                text: 'Goodnight AI is an expert storyteller',
                color: Colors.deepPurple,
                type: TextType.h2,
              ),
              SizedBox(
                height: 20,
              ),
              StyledText(
                text: 'Choose from a variety of genres to generate stories never heard before with beautiful illustrations',
                color: Colors.black45,
                type: TextType.b2,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: const <Widget>[
              SizedBox(
                height: 350,
              ),
              StyledText(
                text: 'One AI crafted story a day',
                color: Colors.deepPurple,
                type: TextType.h2,
              ),
              SizedBox(
                height: 20,
              ),
              StyledText(
                text: 'Try out a free story once you signup, beyond that you can subscribe to get a delicious story everynight before bedtime',
                color: Colors.black45,
                type: TextType.b2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
