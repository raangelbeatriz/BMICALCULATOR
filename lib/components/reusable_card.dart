import 'package:flutter/material.dart';

enum Gender { male, female }
Gender selectGender;

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colorCard, this.cardChild, this.onPress}); //@required for required parameters, so cardChil is non-mandatory


  final Color colorCard; //Final because the Resuable card can be created at any time not just when the code is compiled
  final Widget cardChild;
  final Function onPress; 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colorCard,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
