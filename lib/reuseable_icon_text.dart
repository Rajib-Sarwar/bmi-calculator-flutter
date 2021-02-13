import 'package:flutter/material.dart';
import 'constants.dart';

class ReuseableIconText extends StatelessWidget {
  final IconData iconData;
  final String text;

  ReuseableIconText({this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 80.0,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            text,
            style: kLabelTextStyle,
          )
        ],
      ),
    );
  }
}
