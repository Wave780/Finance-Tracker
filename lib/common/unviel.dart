import 'package:flutter/material.dart'; 

class Unviel extends StatefulWidget {
  const Unviel({super.key});

  @override
  State<Unviel> createState() => _UnvielState();
}

class Item { const Item(this.name,this.icon); final String name; final Icon icon; } 

class _UnvielState extends State<Unviel> {
   TextEditingController nameController = TextEditingController();
    List users = [ const Item('Android',Icon(Icons.android,color:  Color(0xFF167F67),)),
     const Item('Flutter',Icon(Icons.flag,
       color:   Color(0xFF167F67),)),
       const Item('ReactNative',Icon(Icons.format_indent_decrease,color:   Color(0xFF167F67),)),
         const Item('iOS',Icon(Icons.mobile_screen_share,
         color:   Color(0xFF167F67),)), ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Padding( padding: const EdgeInsets.all(10), 
   child: ListView( children: [ Container( alignment:Alignment.center, 
   padding: const EdgeInsets.all(10), 
   margin: const EdgeInsets.only(top: 50), 
   child: const Text( 'Dropdown Box', 
   style: TextStyle( color:  Colors.red, 
   fontWeight: FontWeight.w500, fontSize: 30), )),
    DropdownButton( items: users.map((Item user)
     { return DropdownMenuItem( value: user, 
     child: Row( 
      children: [ user.icon, 
      const SizedBox(width: 10,), 
      Text( user.name, 
      style:  TextStyle(color: Colors.red),
       ), ], ), ); }).toList(),
        onChanged: (value)
         { setState(() { value; }); }, ),
          Container( height: 50, 
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0), 
          // child: RaisedButton( 
          //   textColor: Colors.white, 
          //   color: Colors.red,
          //    child: Text('Button'), 
          //    onPressed: () { print(nameController.text); 
          //    }, )
          ), ], ))); 
 
}
// class Unviel extends StatelessWidget {
//   const Unviel({super.key, required this.title});
 
// @override
//  Unviel({Key key, this.title}) : super(key: key);
//   final String title; State createState() => State();
  
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   } }

  
//    class Item { const Item(http://this.name,this.icon); final String name; final Icon icon; } 
//    class _State extends State { 
//     TextEditingController nameController = TextEditingController();
//      List users = [ const Item('Android',Icon(http://Icons.android,color:  const Color(0xFF167F67),)),
//       const Item('Flutter',Icon(Icons.flag,
//       color:  const Color(0xFF167F67),)),
//        const Item('ReactNative',Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)),
//         const Item('iOS',Icon(http://Icons.mobile_screen_share,
//         color:  const Color(0xFF167F67),)), ]; 
// @override
//  Widget build(BuildContext context) { 
//   return Scaffold( appBar: AppBar( title: Text('App Bar'), ),
//    body: Padding( padding: EdgeInsets.all(10), 
//    child: ListView( children: [ Container( alignment: http://Alignment.center, 
//    padding: EdgeInsets.all(10), 
//    margin: const EdgeInsets.only(top: 50), 
//    child: Text( 'Dropdown Box', 
//    style: TextStyle( color: http://Colors.red, 
//    fontWeight: FontWeight.w500, fontSize: 30), )),
//     DropdownButton( items: http://users.map((Item user)
//      { return DropdownMenuItem( value: user, 
//      child: Row( 
//       children: [ user.icon, 
//       SizedBox(width: 10,), 
//       Text( http://user.name, 
//       style:  TextStyle(color: http://Colors.red),
//        ), ], ), ); }).toList(),
//         onChanged: (value)
//          { setState(() { value; }); }, ),
//           Container( height: 50, 
//           padding: EdgeInsets.fromLTRB(10, 0, 10, 0), 
//           child: RaisedButton( 
//             textColor: Colors.white, 
//             color: http://Colors.red,
//              child: Text('Button'), 
//              onPressed: () { print(nameController.text); 
//              }, )), ], ))); } }