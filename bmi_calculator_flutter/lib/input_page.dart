import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icontent.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { Male, Female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int height = 169;

  @override
  void initState() {
    selectedGender = Gender.Male;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        pressHandler: () {
                          setState(() {
                            selectedGender = Gender.Male;
                          });
                        },
                        color: selectedGender == Gender.Male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: IContent(
                          type: "MALE",
                          icon: FontAwesomeIcons.mars,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        pressHandler: () {
                          setState(() {
                            selectedGender = Gender.Female;
                          });
                        },
                        color: selectedGender == Gender.Female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: IContent(
                          type: "FEMALE",
                          icon: FontAwesomeIcons.venus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  color: kActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'HEIGHT',
                        style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(
                            height.toString(),
                            style: kVariableTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        activeColor: Color(0xFFEB15555),
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.toInt();
                          });
                        },
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: <Expanded>[
                    Expanded(
                      child: ReusableCard(
                        color: kActiveCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: kActiveCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
