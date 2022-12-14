import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("USA"), value: "USA"),
    DropdownMenuItem(child: Text("Canada"), value: "Canada"),
    DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
    DropdownMenuItem(child: Text("England"), value: "England"),
  ];
  return menuItems;
}

class _DropDownState extends State<DropDown> {
  String selectedValue = "USA";
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: <String>['Hillary', 'Joe', 'Felix', 'Monica'].map((name) {
        return DropdownMenuItem<String>(
          value: name,
          // Your row here:
          child: Row(
            children: [
              Icon(Icons.person),
              Text(name),
            ],
          ),
        );
      }).toList(),
      onChanged: (selectedName) {
        // do some action here
      },
    );
  }
}

class _DropDown extends State<DropDown> {
  String selectedValue = "USA";
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedValue,
      items: dropdownItems,
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
      },
    );
  }
}
