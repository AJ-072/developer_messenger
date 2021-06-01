import 'package:flutter/material.dart';

class ReceiveMsgWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        margin: EdgeInsets.only(top: 10, right: size.width * 0.1, left: 10),
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          children: [
            Text("data1dfgdfhgdfghfghfg"),
            Container(
              child: Text("data2"),
              alignment: Alignment.bottomRight,
            ),
          ],
        ),
      ),
      alignment: Alignment.centerLeft,
    );
  }
}
