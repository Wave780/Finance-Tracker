import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class Item {
  final String name;
  final Icon icon;

  Item(this.name, this.icon);
}

class _DropDownState extends State<DropDown> {
  TextEditingController nameController = TextEditingController();

  List users = [
    Item(
        'Walfare',
        Icon(
          Icons.android,
          color: Color(0xFF167F67),
        )),
    Item(
        'Stationary',
        Icon(
          Icons.flag,
          color: Color(0xFF167F67),
        )),
    Item(
        'Fuel',
        Icon(
          Icons.format_indent_decrease,
          color: Color(0xFF167F67),
        )),
    Item(
        'Others',
        Icon(
          Icons.mobile_screen_share,
          color: Color(0xFF167F67),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: [Container()],
        ),
      ),
    );
  }
}
