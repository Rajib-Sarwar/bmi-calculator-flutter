import 'package:flutter/material.dart';

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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(
                      backgroundColor: Color(0xFF121528),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      backgroundColor: Color(0xFF121528),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(
                backgroundColor: Color(0xFF121528),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(
                      backgroundColor: Color(0xFF121528),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      backgroundColor: Color(0xFF121528),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  final Color backgroundColor;

  ReuseableCard({@required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
