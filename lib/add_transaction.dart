import 'package:fin_tracker/common/drop_down.dart';
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
  DateTime selectedDate = DateTime.now();

  List<String> months = [
    "Jan",
    "Feb",
    "Mar",
    "Apr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            DropDown(),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Date',
          style: TextStyle(fontSize: 18),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    16.0,
                  ),
                ),
                padding: const EdgeInsets.all(
                  12.0,
                ),
                child: const Icon(
                  Icons.date_range,
                  size: 24.0,
                  // color: Colors.grey[700],
                  color: Colors.pink,
                ),
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Text(
              "${selectedDate.day} ${months[selectedDate.month - 1]}",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[700],
              ),
            ),
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
        const SizedBox(
          height: 150,
        ),
        SizedBox(
          height: 50.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                if (mounted) {
                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Colors.red[700],
                      content: const Text(
                        "Please enter a valid Amount !",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                }
              },
              child: const Text(
                "Save",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
