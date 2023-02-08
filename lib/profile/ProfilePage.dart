import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: const [
          Text('Profile Page')
        ],
      ),
    );
  }

}