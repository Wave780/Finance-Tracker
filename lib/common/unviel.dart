import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}

class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}

class _State extends State {
  TextEditingController nameController = TextEditingController();

  List users = [
    const Item('Android',Icon(Icons.android,color:  const Color(0xFF167F67),)),
    const Item('Flutter',Icon(Icons.flag,color:  const Color(0xFF167F67),)),
    const Item('ReactNative',Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)),
    const Item('iOS',Icon(Icons.mobile_screen_share,color:  const Color(0xFF167F67),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Nicesnippets'),
        ),
        body: Padding(

            padding: EdgeInsets.all(10),

            child: ListView(
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 50),
                    child: Text(
                      'Dropdown Box',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
//               DropdownButton(
 
//   items: users.map((Item user) => DropdownMenuItem(
//     value: user,
//     child: Container(
//       child: Row(
//         children: [
//           user.icon,
//           SizedBox(width: 12,),
//           Text(user.name, style: TextStyle(color: Colors.pink),)
//         ],
//       ),
//     ),
//   )).toList(),
//   onChanged: ((value) {
//     setState(() {
//       // Update the selected user here
//     });
//   }),
// )


              
              ],
            )));
  }
}