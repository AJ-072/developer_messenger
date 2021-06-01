import 'package:developer_messenger/components/round_button.dart';
import 'package:developer_messenger/components/round_input_text.dart';
import 'package:developer_messenger/components/round_password_text.dart';
import 'package:developer_messenger/dashboard/dashboard.dart';
import 'package:developer_messenger/login/Background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Function onPressed;
  final ValueChanged<String> userNameChanged;
  final ValueChanged<String> passwordChanged;

  const Body(
      {Key key, this.onPressed, this.userNameChanged, this.passwordChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: Column(
      children: [
        Container(
          width: size.width * 0.7,
          margin: EdgeInsets.only(bottom: 20),
          child: Text(
            "Sign In",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        RoundInputText(
          icon: Icons.person,
          hintText: "username",
          onChanged: userNameChanged,
        ),
        RoundPasswordText(
          icon: Icons.lock,
          hintText: "password",
          onChanged: passwordChanged,
        ),
        RoundButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DashBoard()));
          },
          buttonText: "Log In",
        ),
        Container(
          width: size.width * 0.8,
          padding: EdgeInsets.only(right: 10, top: 5),
          child: Text(
            "Forgot password?",
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
      ],
    ));
  }
}
