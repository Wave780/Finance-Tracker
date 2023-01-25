import 'package:flutter/material.dart';

class CreatePinPage extends StatelessWidget {
  const CreatePinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Padding(
    padding: const EdgeInsets.all(30.0),
    child:  Wrap(
      alignment: WrapAlignment.start,
      spacing: 4,
      direction: Axis.horizontal,
      runSpacing: 10,
      children: [
        otpTextField(context, true),
        otpTextField(context, false),
        otpTextField(context, false),
        otpTextField(context, false),
        otpTextField(context, false),
        otpTextField(context, false),
      ],
    ),
  ),
);

Widget _otpTextField(BuildContext context, bool autoFocus) {
 return  Container(
  height: MediaQuery.of(context).size.shortestSide * 0.13,
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(5),
    color: Colors.white,
    shape: BoxShape.rectangle,
  ),
  child: AspectRatio(
    aspectRatio: 1,
    child: TextField(
      autofocus: autoFocus,
      decoration: InputDecoration(
        border: InputBorder.none,
      ),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: TextStyle(),
      maxLines: 1,
      onChanged: (value) {
        if(value.isNotEmpty) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  ),
);
}
  }
  
  otpTextField(BuildContext context, bool bool) {}
}