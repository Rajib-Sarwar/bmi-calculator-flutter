import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget cardChild;

  ReuseableCard({@required this.backgroundColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: cardChild,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
