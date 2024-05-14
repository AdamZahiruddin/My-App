import 'package:flutter/material.dart';
import 'package:selftraining3/pages/about.dart';
import 'package:selftraining3/pages/first_page.dart';
import 'package:selftraining3/pages/settings.dart';
import 'package:selftraining3/pages/tiles_page.dart';

void main() {
  /*FlutterError.onError = (details) {
    FlutterError.presentError(details);
    if(kReleaseMode) exit(1);
  }; */
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Adam App',
      debugShowCheckedModeBanner: false,
      home : const FirstPage(),
      routes: {
        '/homepage' : (context) => const FirstPage(),
        '/settings' :(context) => const Settings(),
        '/tilespage' : (context) => const TilesPage(),
        '/aboutpage' : (context) => const AboutPage()
      },
    );
  }
}



