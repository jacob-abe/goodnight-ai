import 'package:flutter/material.dart';
import 'package:goodnight_ai/onboarding/OnboardingPage.dart';
import 'package:goodnight_ai/global/Home.dart';
import 'package:is_first_run/is_first_run.dart';

class PageRouter extends StatelessWidget {
  const PageRouter({Key? key}) : super(key: key);

  Future<bool> _checkFirstRun() async {
    bool ifr = await IsFirstRun.isFirstRun();
    print(ifr);
    return ifr;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _checkFirstRun(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data ?? false) {
            print(snapshot);
            return const Home(key: Key('Home'));
          } else {
            print(snapshot);
            return const OnBoardingPage();
          }
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}