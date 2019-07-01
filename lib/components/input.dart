import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Theme(
        data: new ThemeData(
          primaryColor: Colors.redAccent,
          primaryColorDark: Colors.red,
        ),
        child: TextFormField(
          textAlign: TextAlign.center,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
            ),
            labelText: 'Email',
            labelStyle: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class InputPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Theme(
        data: new ThemeData(
          primaryColor: Colors.redAccent,
          primaryColorDark: Colors.red,
        ),
        child: TextFormField(
          textAlign: TextAlign.center,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: TextStyle(fontSize: 20, color: Colors.white),
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
            ),
          ),
          obscureText: true,
        ),
      ),
    );
  }
}

class InputConfirmPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Container(
      child: new Theme(
        data: new ThemeData(
          primaryColor: Colors.redAccent,
          primaryColorDark: Colors.red,
        ),
        child: TextFormField(
          textAlign: TextAlign.center,
          cursorColor: Colors.white,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            labelText: 'Confirm Password',
            labelStyle: TextStyle(fontSize: 20, color: Colors.white),
            border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(25.0),
            ),
          ),
          obscureText: true,
        ),
      ),
    );
  }
}