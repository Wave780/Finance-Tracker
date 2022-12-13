import 'package:fin_tracker/Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:fin_tracker/Screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Fin Tracker',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
         // '/': (context) => const OnboardingScreen(),
          // When navigating to the "/second" route, build the SecondScreen widget.
          '/second': (context) => const HomeScreen(),
        },
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: const OnboardingScreen());
  }
}
