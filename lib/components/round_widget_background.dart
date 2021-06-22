import 'package:flutter/material.dart';

class RoundBorder extends StatelessWidget {
  final Widget child;
  final Color color;
  final double margin;

  RoundBorder({@required this.child, this.color, this.margin, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: margin == null ? 0 : margin),
      decoration: BoxDecoration(
          border:
              Border.all(color: color == null ? Colors.white : color, width: 2),
          borderRadius: BorderRadius.circular(30)),
      child: child,
    );
  }
}
