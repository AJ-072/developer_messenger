import 'package:flutter/material.dart';

class FillRoundBorder extends StatelessWidget {
  final Widget child;
  final Color color;

  FillRoundBorder({this.child, this.color, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: (size.width * 0.8),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
