import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({Key? key, this.color, this.cardChild, this.pressHandler});

  final Color? color;
  final Widget? cardChild;
  //Placeholder so that state can be set when card is tapped.
  final VoidCallback? pressHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressHandler,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
      ),
    );
  }
}
