import 'package:flutter/material.dart';

class Unviel extends StatefulWidget {
  const Unviel({super.key});

  @override
  State<Unviel> createState() => _UnvielState();
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class _UnvielState extends State<Unviel> {
  TextEditingController nameController = TextEditingController();
  List users = [
    const Item(
        'Android',
        Icon(
          Icons.android,
          color: Color(0xFF167F67),
        )),
    const Item(
        'Flutter',
        Icon(
          Icons.flag,
          color: Color(0xFF167F67),
        )),
    const Item(
        'ReactNative',
        Icon(
          Icons.format_indent_decrease,
          color: Color(0xFF167F67),
        )),
    const Item(
        'iOS',
        Icon(
          Icons.mobile_screen_share,
          color: Color(0xFF167F67),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 50),
                    child: const Text(
                      'Dropdown Box',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  // child: RaisedButton(
                  //   textColor: Colors.white,
                  //   color: Colors.red,
                  //    child: Text('Button'),
                  //    onPressed: () { print(nameController.text);
                  //    }, )
                ),
              ],
            )));
  }
}
