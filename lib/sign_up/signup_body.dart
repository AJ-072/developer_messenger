import 'package:developer_messenger/components/round_button.dart';
import 'package:developer_messenger/components/round_input_text.dart';
import 'package:developer_messenger/login/login_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LoginBackground(
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.spaceEvenly,
        children: [
          RoundInputText(
            hintText: "Phone Number",
            icon: Icons.phone,
          ),
          RoundButton(
            buttonText: "Send OTP",
          )
        ],
      ),
    );
  }
}
