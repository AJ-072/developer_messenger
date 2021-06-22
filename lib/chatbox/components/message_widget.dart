import 'package:developer_messenger/chatbox/model/Message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class MsgWidget extends StatelessWidget {
  final ChatMsg message;
  final Function onLongPressed;
  final bool isReceived;
  final Function onPressed;

  MsgWidget(
      {@required this.message,
      @required this.isReceived,
      this.onLongPressed,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: isReceived ? Alignment.centerRight : Alignment.centerLeft,
      child: GestureDetector(
        onTap: onPressed,
        onLongPress: onLongPressed,
        child: Container(
          margin: EdgeInsets.only(
              bottom: 10,
              right: isReceived ? 10 : size.width * 0.2,
              left: isReceived ? size.width * 0.2 : 10),
          padding: EdgeInsets.only(top: 10, left: 10, bottom: 5, right: 10),
          decoration: BoxDecoration(
              color: Colors.indigoAccent,
              borderRadius: isReceived
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15))
                  : BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: 5,
            direction: Axis.vertical,
            children: [
              Text(
                message.msg,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                getFormatDate(message.time),
                style: TextStyle(color: Colors.grey, fontSize: 11),
                textAlign: TextAlign.end,
              )
            ],
          ),
        ),
      ),
    );
  }

  String getFormatDate(DateTime date) {
    return DateFormat("HH:mm a").format(date);
  }
}
