import 'package:booking_time/components/rounded_buttons.dart';
import 'package:booking_time/screens/login_screen.dart';
import 'package:booking_time/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 118.0),
                  child: Text(
                    "Welcome",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: Image.asset("images/logo.png"),
              ),
              Column(
                children: [
                  RoundedButton(
                      title: "Login",
                      buttonColor: Colors.purple[100],
                      textColor: Colors.purple,
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      }),
                  RoundedButton(
                    title: "Sign up",
                    buttonColor: Colors.purple,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, SignupScreen.id);
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
