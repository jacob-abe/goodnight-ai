import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: const [
          Text('Home Page')
        ],
      ),
    );
  }

}