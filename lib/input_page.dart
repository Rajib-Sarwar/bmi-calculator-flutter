import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_icon_text.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 80.0;
const cardBackgroundColor = Color(0xFF121528);
const bottomContainerBackgroundColor = Color(0xFFEC1455);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    backgroundColor: cardBackgroundColor,
                    cardChild: ReuseableIconText(
                      iconData: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    backgroundColor: cardBackgroundColor,
                    cardChild: ReuseableIconText(
                      iconData: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              backgroundColor: cardBackgroundColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    backgroundColor: cardBackgroundColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    backgroundColor: cardBackgroundColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerBackgroundColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
