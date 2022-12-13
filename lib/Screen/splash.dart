import "package:flutter/material.dart";
import 'package:go_router/go_router.dart';
import 'package:fin_tracker/Routes/route_names.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(8.0),
              child: Image.asset("assets/Slpash_icon.jpeg")),
          ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              child: Text('Done')),
        ],
      ),
    );
  }
}
