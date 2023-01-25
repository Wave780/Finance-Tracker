import 'package:fin_tracker/createPin.dart';
import 'package:fin_tracker/signUp.dart';
import 'package:flutter/material.dart';
import 'package:fin_tracker/Screen/splash.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

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
          '/second': (context) => const SignUpPage(),
          '/third': (context) => const CreatePinPage(),
        },
        theme: FlexThemeData.light(
          scheme: FlexScheme.flutterDash,
          surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
          blendLevel: 20,
          appBarOpacity: 0.95,
          tooltipsMatchBackground: true,
          subThemesData: const FlexSubThemesData(
            blendOnLevel: 20,
            blendOnColors: false,
          ),
          keyColors: const FlexKeyColors(
            useSecondary: true,
            keepSecondary: true,
            keepTertiary: true,
            keepTertiaryContainer: true,
          ),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          // To use the playground font, add GoogleFonts package and uncomment
          // fontFamily: GoogleFonts.notoSans().fontFamily,
        ),
        darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.flutterDash,
          surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
          blendLevel: 15,
          appBarStyle: FlexAppBarStyle.background,
          appBarOpacity: 0.90,
          tooltipsMatchBackground: true,
          subThemesData: const FlexSubThemesData(
            blendOnLevel: 30,
          ),
          keyColors: const FlexKeyColors(
            useSecondary: true,
          ),
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
          // To use the playground font, add GoogleFonts package and uncomment
          // fontFamily: GoogleFonts.notoSans().fontFamily,
        ),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,

        home: const OnboardingScreen());
  }
}
