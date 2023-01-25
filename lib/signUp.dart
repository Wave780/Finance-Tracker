import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Let's get your business \nworking",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: "Email"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email';
                      }
                    },
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(hintText: "Phone number"),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone number';
                      }
                    },
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.number,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'you can optionally add an email address to your account to\ncontiune your setup. You can always include or update this later',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 65,
                  width: 220,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Next',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
                const SizedBox(height: 40),
                const Text('Got an account? Sign In')
              ])),
    );
  }
}
