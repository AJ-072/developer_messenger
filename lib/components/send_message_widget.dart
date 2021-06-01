import 'package:flutter/material.dart';

class SendMsgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: EdgeInsets.only(top: 10, left: size.width * 0.1, right: 10),
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        child: Column(
          children: [
            Text("data1"),
            Text("data2"),
          ],
        ),
      ),
      alignment: Alignment.centerRight,
    );
  }
}
