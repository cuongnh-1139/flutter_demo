import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF989898),
                    cardChild: ReusableColumn(
                      customIcon: FontAwesomeIcons.mars,
                      textLabel: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF989898),
                    cardChild: ReusableColumn(
                        customIcon: FontAwesomeIcons.mars, textLabel: 'FEMALE'),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: Color(0xFF989898),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF989898),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xFF989898),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableColumn extends StatelessWidget {
  final IconData customIcon;
  final String textLabel;

  ReusableColumn({@required this.customIcon, @required this.textLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          customIcon,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          textLabel,
          style: TextStyle(color: Color(0xFFFFFFFF)),
        )
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});

  final Color colour;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
