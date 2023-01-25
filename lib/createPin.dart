import 'package:fin_tracker/signUp.dart';
import 'package:flutter/material.dart';

class CreatePinPage extends StatelessWidget {
  const CreatePinPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 1000,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const Text('Create A Pin'),
                  ElevatedButton(
                    child: const Text('Continue'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
    return SignUpPage();
  }
}
