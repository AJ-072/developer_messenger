import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  Background({@required Widget child}) : this.child = child;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  constraints: BoxConstraints.expand(
                      width: size.width * 0.8, height: size.height * 0.35),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/login_background.png"),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
