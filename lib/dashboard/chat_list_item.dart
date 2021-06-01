import 'package:developer_messenger/chatbox/ChatBox.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatListTile(),
        Divider(
          indent: 20,
          endIndent: 15,
          thickness: 2,
          color: Colors.grey,
        )
      ],
    );
  }
}

class ChatListTile extends StatefulWidget {
  _ChatListTile createState() => _ChatListTile();
}

class _ChatListTile extends State<ChatListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        foregroundImage: AssetImage("images/chat_image.jpg"),
        radius: 35,
        foregroundColor: Colors.grey,
        backgroundColor: Colors.grey,
      ),
      title: Text("Username"),
      subtitle: Text("last message"),
      trailing: Text("time"),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ChatBox()));
      },
    );
  }
}
