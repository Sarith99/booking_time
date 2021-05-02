import 'package:booking_time/screens/home_screen.dart';
import 'package:booking_time/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:booking_time/components/rounded_buttons.dart';
import 'package:booking_time/components/rounded_textfields.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 70.0),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Create an account, It's free",
                        style:
                            TextStyle(fontSize: 15.0, color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
                child: Column(
                  children: [
                    RoundedTextfields(label: "Email"),
                    RoundedTextfields(
                      label: "Password",
                      obscureText: true,
                    ),
                    RoundedTextfields(
                      label: "Confirm Password",
                      obscureText: true,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.0),
                      child: RoundedButton(
                        title: "Sign up",
                        buttonColor: Colors.purpleAccent,
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, HomeScreen.id);
                          //TODO: Authentication.
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 55.0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Text("Already have an account?"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, LoginScreen.id);
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.purpleAccent,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
