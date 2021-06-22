import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  LoginBackground({@required Widget child}) : this.child = child;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
              Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: child)
            ],
          ),
        ),
      ),
    );
  }
}
