import 'package:booking_time/screens/home_screen.dart';
import 'package:booking_time/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:booking_time/components/rounded_buttons.dart';
import 'package:booking_time/components/rounded_textfields.dart';
import 'package:http/http.dart' as http;

class SignupScreen extends StatefulWidget {
  static const String id = 'signup_screen';
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();


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
                    RoundedTextfields(label: "Email",controller: email),
                    RoundedTextfields(
                      label: "Password",
                      obscureText: true,
                      controller: password
                    ),
                    RoundedTextfields(
                      label: "Confirm Password",
                      obscureText: true,
                      controller: confirmPassword
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40.0),
                      child: RoundedButton(
                        title: "Sign up",
                        buttonColor: Colors.purpleAccent,
                        textColor: Colors.white,
                        onPressed: () async {
                          // Navigator.pushNamed(context, HomeScreen.id);
                          //TODO: Authentication.
                          if(password.text!=confirmPassword.text){
                            print("Passwords does not match!");
                          }
                          else{
                            var response = await http.post(
                              Uri.parse("http://localhost:3000/user"),
                              headers: {
                                "Content-Type": "application/x-www-form-urlencoded"
                              },
                              body: {
                                'email': email.text,
                                'password': password.text,
                                'name': "Dulaj",
                                'nic': "1233232",
                                'contactNo': '0323233234',
                                'district': "Matara"
                              }
                            );

                            if (response.statusCode == 200) {
                              print(response.body);
                            } else {
                              throw Exception('Failed to load post');
                            }

                          }
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
