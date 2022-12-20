import 'package:flutter/material.dart';

class AddTranscation extends StatefulWidget {
  const AddTranscation({super.key});

  @override
  State<AddTranscation> createState() => _AddTranscationState();
}

class _AddTranscationState extends State<AddTranscation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0.0),
      backgroundColor: Colors.white,
      body: ListView(padding: EdgeInsets.all(12), children: [
        Text(
          "\nAdd Transaction",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.all(18),
              child: Icon(
                Icons.attach_money_outlined,
                color: Colors.white,
              ),
            )
          ],
        )
      ]),
    );
  }
}
