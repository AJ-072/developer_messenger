import 'package:developer_messenger/components/round_widget_background.dart';
import 'package:flutter/material.dart';

class RoundPasswordText extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  final IconData icon;

  const RoundPasswordText({Key key, this.hintText, this.onChanged, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundBorder(
      margin: 15,
      color: Colors.indigoAccent,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black26,
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            prefixIcon: Icon(
              icon,
              color: Colors.black38,
            ),
            hintText: hintText,
            border: InputBorder.none,
            suffixIcon: Icon(
              Icons.visibility,
              color: Colors.black38,
            )),
      ),
    );
  }
}
