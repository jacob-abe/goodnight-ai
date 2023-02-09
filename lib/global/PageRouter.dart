import 'package:flutter/material.dart';
import 'package:goodnight_ai/onboarding/OnboardingPage.dart';
import 'package:goodnight_ai/global/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PageRouter extends StatelessWidget {
  const PageRouter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return const Home(key: Key('Home'));
          } else {
            return const OnBoardingPage();
          }
        }else{
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
