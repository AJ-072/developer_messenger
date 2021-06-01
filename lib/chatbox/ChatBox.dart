import 'package:developer_messenger/components/receive_message_widget.dart';
import 'package:developer_messenger/components/send_message_widget.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.deepOrangeAccent,
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("username"),
        ),
        body: Chat(),
      ),
    );
  }
}

class Chat extends StatefulWidget {
  _Chat createState() => _Chat();
}

class _Chat extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SendMsgWidget(),
        ReceiveMsgWidget(),
        SendMsgWidget(),
        ReceiveMsgWidget(),
      ],
    );
  }
}
