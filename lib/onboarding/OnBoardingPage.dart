import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        skipTextButton: Text('Skip'),
        trailing: Text('Login'),
        background: [
          SvgPicture.asset('images/onboarding/family.svg', height: 300, width: 300),
          SvgPicture.asset('images/onboarding/ai.svg', height: 300, width: 300),
          SvgPicture.asset('images/onboarding/calendar.svg', height: 300, width: 300),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 380,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 2'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: const <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
        ],
    );
  }
}