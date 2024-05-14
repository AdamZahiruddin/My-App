import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'App Version : incomplete wireframe',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
