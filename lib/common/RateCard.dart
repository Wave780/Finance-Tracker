import 'package:flutter/material.dart';

class RateCard extends StatefulWidget {
  final Widget child;
  final Color boxColor;

  const RateCard({
    super.key,
    required this.child, required this.boxColor,
  });

  @override
  State<RateCard> createState() => _RateCardState();
}

class _RateCardState extends State<RateCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
            margin: EdgeInsets.all(8.0),
            color: Colors.pink,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: widget.child,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                   BoxShadow(
                    color:widget.boxColor ?? Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: Colors.pink,
              ),
            ),
          )
        ]);
  }
}
