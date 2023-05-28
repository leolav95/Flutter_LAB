import 'package:bmi_calculator/icontent.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender { Male, Female }

const bHeight = 200.0;
const activeCardColor = Color(0xff1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender;

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
                            ? activeCardColor
                            : inactiveCardColor,
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
                            ? activeCardColor
                            : inactiveCardColor,
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
                child: Row(
                  children: <Expanded>[
                    Expanded(
                      child: ReusableCard(
                        color: activeCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: <Expanded>[
                    Expanded(
                      child: ReusableCard(
                        color: activeCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        color: activeCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: bottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
