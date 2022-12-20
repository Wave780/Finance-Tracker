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
      body: ListView(padding: const EdgeInsets.all(12), children: [
        const Text(
          "\nAdd Transaction",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(16)),
              padding: const EdgeInsets.all(18),
              child: const Icon(
                Icons.attach_money_outlined,
                size: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Amount', border: InputBorder.none),
                    style: TextStyle(fontSize: 24),
                    onChanged: (val) {
                      try {
                        int.parse(val);
                      } catch (e) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.white,
                            content: Row(
                              children: [],
                            )));
                      }
                    }))
          ],
        )
      ]),
    );
  }
}
