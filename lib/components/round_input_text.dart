import 'package:developer_messenger/components/round_widget_background.dart';
import 'package:flutter/material.dart';

class RoundInputText extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final ValueChanged<String> onChanged;

  const RoundInputText({Key key, this.icon, this.hintText, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundBorder(
      color: Colors.indigoAccent,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        cursorColor: Colors.black26,
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.black38,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
