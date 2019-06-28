import 'package:flutter/material.dart';

class InputLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textAlign: TextAlign.center,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: new BorderRadius.circular(25.0),
          ),
          labelText: 'Login',
          labelStyle: TextStyle(fontSize: 20, color: Colors.white),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}

class InputPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(fontSize: 20, color: Colors.white),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: new BorderRadius.circular(25.0),
          ),
          //fillColor: Colors.transparent,
        ),
        obscureText: true,
      ),
    );
  }
}
