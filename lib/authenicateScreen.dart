import 'package:Blog_app/Screens/Register.dart';
import 'package:Blog_app/Screens/signup.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool toogle = true;
  toogleView() {
    setState(() {
      toogle = !toogle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return toogle
        ? SignIn(
            toogleView: toogleView,
          )
        : Register(toogleView: toogleView);
  }
}
