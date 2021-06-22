import 'package:flutter/material.dart';

class FillRoundBorder extends StatelessWidget {
  final Widget child;
  final Color color;
  final double margin;

  FillRoundBorder({@required this.child, this.color, Key key, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: margin == null ? 0 : margin),
      decoration: BoxDecoration(
          color: color == null ? Colors.white : color,
          borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
