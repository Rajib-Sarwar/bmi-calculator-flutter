import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget cardChild;
  final Function onPress;

  ReuseableCard({this.backgroundColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        margin: EdgeInsets.all(15),
        child: cardChild,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
