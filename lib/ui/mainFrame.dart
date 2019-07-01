import 'package:flutter/material.dart';
import 'package:kaki_repair/components/background.dart';

class MainFrame extends StatefulWidget {
  @override
  _MainFrameState createState() => _MainFrameState();
}

class _MainFrameState extends State<MainFrame> {
  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 650.0 ? 600.0 : deviceWidth * 0.95;
    return WillPopScope(
      onWillPop:  () async {
        Navigator.pushReplacementNamed(context, '/');
      },
        child: Scaffold(
          body: LayoutBuilder(
            builder: (context, constraints){
              return Container(
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    MainBackground(),
                    Center(
                      child: Container(
                        width: targetWidth,
                        child: SingleChildScrollView(
                          child: ConstrainedBox(
                             constraints:
                              BoxConstraints(minHeight: constraints.maxHeight),
                              child: IntrinsicHeight(
                                child: Form(
                                  child: Form(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                      ],
                                    ),
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
            }
          ),
        ),
    );
  }
}