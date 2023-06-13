import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class IContent extends StatelessWidget {
  const IContent({Key? key, this.type, this.icon});

  final String? type;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          type!,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
