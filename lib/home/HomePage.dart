import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;

    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Text('Home Page ${user?.displayName}')
        ],
      ),
    );
  }

}