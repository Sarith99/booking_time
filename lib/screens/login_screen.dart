import 'package:booking_time/constants.dart';
import 'package:booking_time/model/login_model.dart';
// import 'package:booking_time/screens/home_screen.dart';
import 'package:booking_time/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:booking_time/components/rounded_buttons.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginRequestModel requestModel;

  @override
  void initState() {
    super.initState();
    requestModel = new LoginRequestModel();
  }

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
                        "Login",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Login to your account",
                        style:
                            TextStyle(fontSize: 15.0, color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 55.0),
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (input) => requestModel.email = input,
                      decoration:
                          kTextFieldDecoration.copyWith(labelText: "Email"),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (input) => requestModel.password = input,
                      decoration:
                          kTextFieldDecoration.copyWith(labelText: "Password"),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 70.0,
                    ),
                    RoundedButton(
                      title: "Login",
                      buttonColor: Colors.purpleAccent,
                      textColor: Colors.black,
                      onPressed: () {
                        print(requestModel.toJson());
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 55.0,
                        vertical: 20.0,
                      ),
                      child: Row(
                        children: [
                          Container(
                            child: Text("Don't have an account?"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, SignupScreen.id);
                            },
                            child: Text(
                              "Sign up",
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
