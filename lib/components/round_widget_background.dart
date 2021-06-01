import 'package:flutter/material.dart';

class RoundBorder extends StatelessWidget {
  final Widget child;
  final Color color;

  RoundBorder({this.child, this.color, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: (size.width * 0.8),
      decoration: BoxDecoration(
          border: Border.all(color: color, width: 2),
          borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
