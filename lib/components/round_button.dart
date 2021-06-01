import 'package:developer_messenger/components/round_fill_background.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final Function onPressed;
  final String buttonText;

  const RoundButton({Key key, this.onPressed, this.buttonText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FillRoundBorder(
        color: Colors.deepOrangeAccent,
        child: TextButton(
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          onPressed: onPressed,
        ));
  }
}
