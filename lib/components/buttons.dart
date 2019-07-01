import 'package:flutter/material.dart';
import 'dart:ui';

class ButtonLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300.0,
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.black)),
        onPressed: () => {
              Navigator.pushReplacementNamed(context, '/login'),
            },
      ),
    );
  }
}

class ButtonRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300.0,
      child: RaisedButton(
        color: Colors.white,
        child: Text(
          'CREATE AN ACCOUNT',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: Colors.black),
        ),
        onPressed: () => {
              Navigator.pushReplacementNamed(context, '/register'),
              debugPrint("aaa"),
            },
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300.0,
      child: RaisedButton(
        textColor: Colors.black,
        color: Colors.yellow[100],
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () => {
              Navigator.pushReplacementNamed(context, '/mainFrame'),
            },
      ),
    );
  }
}

class ButtonRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 300.0,
      child: RaisedButton(
        textColor: Colors.black,
        color: Colors.yellow[100],
        child: Text(
          'Create Account',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        onPressed: () => {
              Navigator.pushReplacementNamed(context, '/mainFrame'),
            },
      ),
    );
  }
}
