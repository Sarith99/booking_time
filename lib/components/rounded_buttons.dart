import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {this.title, this.buttonColor, this.textColor, @required this.onPressed});

  final String title;
  final Color buttonColor;
  final Color textColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 15.0,
      ),
      child: Material(
        elevation: 10.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: () {
            onPressed();
          },
          minWidth: double.infinity,
          height: 60.0,
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }
}
