import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/kakiRepair.png'),
                SizedBox(height: 16.0),
              ],
            ),
            SizedBox(height: 80.0),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Phone number, username, or email',
              ),
            ),
            SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: <Widget>[
                FlatButton(
                  child: Text('SignUp'),
                  onPressed: () {
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),
                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                RaisedButton(
                  child: Text('SignIn'),
                  onPressed: () {
                    Navigator.pop(context);
                    // TODO: Show the next page (101)
                  },
                ),
                // TODO: Add buttons (101)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
