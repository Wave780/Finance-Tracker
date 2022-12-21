import 'package:fin_tracker/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTranscation extends StatefulWidget {
  const AddTranscation({super.key});

  @override
  State<AddTranscation> createState() => _AddTranscationState();
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class _AddTranscationState extends State<AddTranscation> {
  String credit = 'Income';
  String out = 'Expense';
  List users = [
    const Item(
        'Android',
        Icon(
          Icons.android,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'Flutter',
        Icon(
          Icons.flag,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'ReactNative',
        Icon(
          Icons.format_indent_decrease,
          color: const Color(0xFF167F67),
        )),
    const Item(
        'iOS',
        Icon(
          Icons.mobile_screen_share,
          color: const Color(0xFF167F67),
        )),
  ];

  @override
  Widget build(BuildContext context) {
    var categoryValue;
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
        const Text('Amount'),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                padding: const EdgeInsets.all(18),
                child: const Text(
                  'NGN',
                  style: TextStyle(color: Colors.pink, fontSize: 24),
                )),
            const SizedBox(
              width: 12,
            ),
            Expanded(
                child: TextField(
              decoration: const InputDecoration(
                  hintText: 'Amount',
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(style: BorderStyle.solid))),
              style: const TextStyle(fontSize: 24),
              onChanged: (val) {
                try {
                  int.parse(val);
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.white,
                      duration: const Duration(seconds: 3),
                      content: Row(
                        children: const [
                          Icon(
                            Icons.info_outline_rounded,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            'Enter the Amount \n Thanks',
                            style: TextStyle(fontSize: 24),
                          )
                        ],
                      )));
                }
              },
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
            ))
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Column(
          children: [
            DropDown(),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Text('Notes'),
        const Expanded(
            child: TextField(
          decoration: InputDecoration(
              hintText: 'Enter your Note',
              border: UnderlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.solid))),
          style: TextStyle(fontSize: 24),
        )),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChoiceChip(
              label: Text(
                "Income",
                style: TextStyle(
                  fontSize: 18.0,
                  color: credit == "Income" ? Colors.white : Colors.black,
                ),
              ),
              selectedColor: Colors.pink,
              onSelected: (val) {
                if (val) {
                  setState(() {
                    credit = "Income";
                    if (out.isEmpty || out == "Expense") {
                      out = 'Income';
                    }
                  });
                }
              },
              selected: credit == "Income" ? true : false,
            ),
            const SizedBox(
              width: 10,
            ),
            ChoiceChip(
              label: Text(
                "Expense",
                style: TextStyle(
                  fontSize: 18.0,
                  color: out == "Expense" ? Colors.white : Colors.black,
                ),
              ),
              selectedColor: Colors.pink,
              onSelected: (val) {
                if (val) {
                  setState(() {
                    out = "Expense";
                    if (out.isEmpty || out == "Expense") {
                      credit = 'Expense';
                    }
                  });
                }
              },
              selected: credit == "Expense" ? true : false,
            ),
          ],
        ),
      ]),
    );
  }
}
