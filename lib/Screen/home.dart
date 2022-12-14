import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: IconButton(
          onPressed: () => Navigator.pop(context), icon: const Icon(Icons.menu)),
          title: const Text('Fin Tracker'),
    ));
  }
}


// ElevatedButton(
        // child: Text('Data'),
        // onPressed: () => Navigator.pop(context),
      // ),