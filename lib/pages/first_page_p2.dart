import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FittedBox(
            child: Image.asset(
              'lib/assets/mark_gojo.jpg',
              fit: BoxFit.fill),
        ),
      );
  }
}