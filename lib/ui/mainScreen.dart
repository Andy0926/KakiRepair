import 'package:flutter/material.dart';
import 'package:kaki_repair/components/background.dart';
import 'package:kaki_repair/components/buttons.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 650.0 ? 600.0 : deviceWidth * 0.95;
    Color colorText = Color(0xFFFFFFFF);
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
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
                                  height: 110.0,
                                ),
                                Image.asset('assets/kakiRepair.png'),
                                SizedBox(
                                  height: 30.0,
                                ),
                                Text(
                                  'A MOVEMENT TO ENCOURAGE PEOPLE TO FIX THEIR OWN STUFF RATHER THAN JUST THROWING THEM AWAY',
                                  style: TextStyle(
                                    color: colorText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(
                                  height: 90,
                                ),
                                ButtonLoginScreen(),
                                SizedBox(
                                  height: 40,
                                ),
                                ButtonRegisterScreen(),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
