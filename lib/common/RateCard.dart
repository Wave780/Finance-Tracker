import 'package:flutter/material.dart';

class Rate_Card extends StatefulWidget {
  final Widget child;

  final Color boxColor;
  final Color mainColor;
  final Function onPressed;

  const Rate_Card({
    super.key,
    required this.child,
    required this.boxColor,
    required this.mainColor,
    required this.onPressed, 
  });

  @override
  State<Rate_Card> createState() => _Rate_CardState();
}

class _Rate_CardState extends State<Rate_Card> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            onTap: () => widget.onPressed,
            child: Card(
            
              margin: const EdgeInsets.all(4.0),
              color: Colors.pink,
              child: Container(
                
                height: 90,
                width: 150,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: widget.boxColor,
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(3, 3), // changes position of shadow
                    ),
                  ],
                  color: widget.mainColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: widget.child,
                ),
              ),
            ),
          )
        ]);
  }
}
