import 'package:developer_messenger/chatbox/components/chat_input_widget.dart';
import 'package:flutter/material.dart';

import 'components/message_widget.dart';
import 'model/Message.dart';

class ChatBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.deepOrangeAccent,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("username"),
      ),
      body: Chat(),
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
        Expanded(
          child: ListView.builder(
            reverse: true,
            itemCount: 16,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return MsgWidget(
                isReceived: index % 2 == 0,
                message: ChatMsg("senderId", "sender", "hello,How are you",
                    "receiverId", "receiver", DateTime.now()),
              );
            },
          ),
        ),
        Container(child: ChatInput(), alignment: Alignment.bottomCenter)
      ],
    );
  }
}
