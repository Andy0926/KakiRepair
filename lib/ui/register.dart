import 'package:flutter/material.dart';
import 'package:kaki_repair/components/background.dart';
import 'package:kaki_repair/components/buttons.dart';
import 'package:kaki_repair/components/input.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                                children: <Widget>[
                                  Spacer(),
                                  Text(
                                    'Create an account',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 80.0,
                                  ),
                                  InputLogin(),
                                  SizedBox(
                                    height: 35.0,
                                  ),
                                  InputPassword(),
                                  SizedBox(
                                    height: 35.0,
                                  ),
                                  InputConfirmPassword(),
                                  SizedBox(
                                    height: 80.0,
                                  ),
                                  ButtonRegister(),
                                  SizedBox(
                                    height: 70.0,
                                  ),
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
