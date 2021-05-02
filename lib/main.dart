import 'package:booking_time/screens/home_screen.dart';
import 'package:booking_time/screens/login_screen.dart';
import 'package:booking_time/screens/signup_screen.dart';
import 'package:booking_time/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BookingTime());
}

class BookingTime extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
