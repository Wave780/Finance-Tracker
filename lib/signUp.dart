import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Let's get your business \n working",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                
              ),
            ],
          ),
        ));
  }
}
