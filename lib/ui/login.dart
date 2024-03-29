import 'package:flutter/material.dart';
import 'package:kaki_repair/components/background.dart';
import 'package:kaki_repair/components/buttons.dart';
import 'package:kaki_repair/components/input.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 650.0 ? 600.0 : deviceWidth * 0.95;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacementNamed(context, '/');
      },
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  BackgroundImageBlur(),
                  Center(
                    child: Container(
                      width: targetWidth,
                      child: SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints(minHeight: constraints.maxHeight),
                          child: IntrinsicHeight(
                            child: Form(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Spacer(),
                                  Text(
                                    'Welcome Back!',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                  Spacer(),
                                  InputLogin(),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  InputPassword(),
                                  Spacer(),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  ButtonLogin(),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Text(
                                    'Forgot password?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
