import 'package:booking_time/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: non_constant_identifier_names
Widget RoundedTextfields({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: kTextFieldDecoration,
      ),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
