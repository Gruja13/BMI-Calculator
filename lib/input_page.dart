import 'package:flutter/material.dart';

const bottomContainerHeight = 70.0;

// Colors palette
const activeCardColor = Color(0xFF1D1E33);
const bottomCardColor = Colors.teal;

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
                  child: new RefCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: new RefCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: new RefCard(
              color: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new RefCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: new RefCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomCardColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

// Card view design
class RefCard extends StatelessWidget {
  RefCard({@required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
