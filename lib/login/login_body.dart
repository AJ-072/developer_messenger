import 'package:developer_messenger/components/round_button.dart';
import 'package:developer_messenger/components/round_input_text.dart';
import 'package:developer_messenger/components/round_password_text.dart';
import 'package:developer_messenger/dashboard/dashboard.dart';
import 'package:developer_messenger/login/login_background.dart';
import 'package:developer_messenger/sign_up/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginBody extends StatelessWidget {
  final Function onPressed;
  final ValueChanged<String> userNameChanged;
  final ValueChanged<String> passwordChanged;

  const LoginBody(
      {Key key, this.onPressed, this.userNameChanged, this.passwordChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
        child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: EdgeInsets.only(bottom: 20, left: 20),
            child: Text(
              "Sign In",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent),
            ),
          ),
        ),
        RoundInputText(
          icon: Icons.person,
          hintText: "Phone Number",
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
        Container(
            margin: EdgeInsets.only(top: 40),
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp())),
              child: Text(
                "Not created?SignUp",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            )),
      ],
    ));
  }
}
